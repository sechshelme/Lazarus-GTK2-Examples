/*
 * Copyright © 2019 Benjamin Otte
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library. If not, see <http://www.gnu.org/licenses/>.
 *
 * Authors: Benjamin Otte <otte@gnome.org>
 */


#pragma once

#include <gtk/gtktypes.h>



#define GTK_TYPE_EXPRESSION (gtk_expression_get_type ())
#define GTK_TYPE_EXPRESSION_WATCH (gtk_expression_watch_get_type())

#define GTK_IS_EXPRESSION(obj)  (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_EXPRESSION))
#define GTK_EXPRESSION(obj)     (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_EXPRESSION, GtkExpression))

typedef struct _GtkExpression GtkExpression;
typedef struct _GtkExpressionWatch GtkExpressionWatch;

/**
 * GtkExpressionNotify:
 * @user_data: data passed to gtk_expression_watch()
 *
 * Callback called by gtk_expression_watch() when the
 * expression value changes.
 */
typedef void            (* GtkExpressionNotify)                 (gpointer                        user_data);


GType                   gtk_expression_get_type                 (void) ;


GtkExpression *         gtk_expression_ref                      (GtkExpression                  *self);

void                    gtk_expression_unref                    (GtkExpression                  *self);



GType                   gtk_expression_get_value_type           (GtkExpression                  *self);

gboolean                gtk_expression_is_static                (GtkExpression                  *self);

gboolean                gtk_expression_evaluate                 (GtkExpression                  *self,
                                                                 gpointer                        this_,
                                                                 GValue                         *value);

GtkExpressionWatch *    gtk_expression_watch                    (GtkExpression                  *self,
                                                                 gpointer                        this_,
                                                                 GtkExpressionNotify             notify,
                                                                 gpointer                        user_data,
                                                                 GDestroyNotify                  user_destroy);

GtkExpressionWatch *    gtk_expression_bind                     (GtkExpression                  *self,
                                                                 gpointer                        target,
                                                                 const char *                    property,
                                                                 gpointer                        this_);


GType                   gtk_expression_watch_get_type           (void) ;

GtkExpressionWatch *    gtk_expression_watch_ref                (GtkExpressionWatch             *watch);

void                    gtk_expression_watch_unref              (GtkExpressionWatch             *watch);

gboolean                gtk_expression_watch_evaluate           (GtkExpressionWatch             *watch,
                                                                 GValue                         *value);

void                    gtk_expression_watch_unwatch            (GtkExpressionWatch             *watch);

#define GTK_TYPE_PROPERTY_EXPRESSION (gtk_property_expression_get_type())
typedef struct _GtkPropertyExpression   GtkPropertyExpression;


GType                   gtk_property_expression_get_type        (void) ;


GtkExpression *         gtk_property_expression_new             (GType                           this_type,
                                                                 GtkExpression                  *expression,
                                                                 const char                     *property_name);

GtkExpression *         gtk_property_expression_new_for_pspec   (GtkExpression                  *expression,
                                                                 GParamSpec                     *pspec);


GtkExpression *         gtk_property_expression_get_expression  (GtkExpression                  *expression);

GParamSpec *            gtk_property_expression_get_pspec       (GtkExpression                  *expression);

#define GTK_TYPE_CONSTANT_EXPRESSION (gtk_constant_expression_get_type())
typedef struct _GtkConstantExpression   GtkConstantExpression;


GType                   gtk_constant_expression_get_type        (void) ;


GtkExpression *         gtk_constant_expression_new             (GType                           value_type,
                                                                 ...);

GtkExpression *         gtk_constant_expression_new_for_value   (const GValue                   *value);


const GValue *          gtk_constant_expression_get_value       (GtkExpression                  *expression);

#define GTK_TYPE_OBJECT_EXPRESSION (gtk_object_expression_get_type())
typedef struct _GtkObjectExpression     GtkObjectExpression;


GType                   gtk_object_expression_get_type          (void) ;


GtkExpression *         gtk_object_expression_new               (GObject                        *object);


GObject *               gtk_object_expression_get_object        (GtkExpression                  *expression);

#define GTK_TYPE_CLOSURE_EXPRESSION (gtk_closure_expression_get_type())
typedef struct _GtkClosureExpression    GtkClosureExpression;


GType                   gtk_closure_expression_get_type         (void) ;


GtkExpression *         gtk_closure_expression_new              (GType                           value_type,
                                                                 GClosure                       *closure,
                                                                 guint                           n_params,
                                                                 GtkExpression                 **params);

#define GTK_TYPE_CCLOSURE_EXPRESSION (gtk_cclosure_expression_get_type())
typedef struct _GtkCClosureExpression   GtkCClosureExpression;


GType                   gtk_cclosure_expression_get_type        (void) ;


GtkExpression *         gtk_cclosure_expression_new             (GType                           value_type,
                                                                 GClosureMarshal                 marshal,
                                                                 guint                           n_params,
                                                                 GtkExpression                 **params,
                                                                 GCallback                       callback_func,
                                                                 gpointer                        user_data,
                                                                 GClosureNotify                  user_destroy);

/* GObject integration, so we can use GtkBuilder */

/**
 * GTK_VALUE_HOLDS_EXPRESSION:
 * @value: a `GValue`
 *
 * Evaluates to %TRUE if @value was initialized with %GTK_TYPE_EXPRESSION.
 */
#define GTK_VALUE_HOLDS_EXPRESSION(value)       (G_VALUE_HOLDS ((value), GTK_TYPE_EXPRESSION))


void            gtk_value_set_expression        (GValue        *value,
                                                 GtkExpression *expression);

void            gtk_value_take_expression       (GValue        *value,
                                                 GtkExpression *expression);

GtkExpression * gtk_value_get_expression        (const GValue  *value);

GtkExpression * gtk_value_dup_expression        (const GValue  *value);

#define GTK_TYPE_PARAM_SPEC_EXPRESSION (gtk_param_expression_get_type())
#define GTK_PARAM_SPEC_EXPRESSION(obj)          (G_TYPE_CHECK_INSTANCE_CAST ((obj), GTK_TYPE_PARAM_SPEC_EXPRESSION, GtkParamSpecExpression))
#define GTK_IS_PARAM_SPEC_EXPRESSION(obj)       (G_TYPE_CHECK_INSTANCE_TYPE ((obj), GTK_TYPE_PARAM_SPEC_EXPRESSION))

/**
 * GtkParamSpecExpression:
 *
 * A `GParamSpec` for properties holding a `GtkExpression`.
 */
typedef struct {
  /*< private >*/
  GParamSpec parent_instance;
} GtkParamSpecExpression;


GType           gtk_param_expression_get_type   (void) ;

GParamSpec *    gtk_param_spec_expression       (const char    *name,
                                                 const char    *nick,
                                                 const char    *blurb,
                                                 GParamFlags    flags);



