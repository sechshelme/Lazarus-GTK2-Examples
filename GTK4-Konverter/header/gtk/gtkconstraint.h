/* gtkconstraint.h: Constraint between two widgets
 * Copyright 2019  GNOME Foundation
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
 * Author: Emmanuele Bassi
 */

#pragma once

#include <gtk/gtktypes.h>
#include <gtk/gtkenums.h>

/* Zeile entfernt */

typedef struct _GtkConstraintTarget GtkConstraintTarget;

#define GTK_TYPE_CONSTRAINT_TARGET (gtk_constraint_target_get_type ())

/**
 * GtkConstraintTarget:
 *
 * The `GtkConstraintTarget` interface is implemented by objects that
 * can be used as source or target in `GtkConstraint`s.
 *
 * Besides `GtkWidget`, it is also implemented by `GtkConstraintGuide`.
 */

/* Zeile entfernt */
/* Zeile entfernt */

#define GTK_TYPE_CONSTRAINT (gtk_constraint_get_type ())

/* Zeile entfernt */
/* Zeile entfernt */

/* Zeile entfernt */
GtkConstraint *         gtk_constraint_new                      (gpointer                target,
                                                                 GtkConstraintAttribute  target_attribute,
                                                                 GtkConstraintRelation   relation,
                                                                 gpointer                source,
                                                                 GtkConstraintAttribute  source_attribute,
                                                                 double                  multiplier,
                                                                 double                  constant,
                                                                 int                     strength);
/* Zeile entfernt */
GtkConstraint *         gtk_constraint_new_constant             (gpointer                target,
                                                                 GtkConstraintAttribute  target_attribute,
                                                                 GtkConstraintRelation   relation,
                                                                 double                  constant,
                                                                 int                     strength);

/* Zeile entfernt */
GtkConstraintTarget *   gtk_constraint_get_target               (GtkConstraint          *constraint);
/* Zeile entfernt */
GtkConstraintAttribute  gtk_constraint_get_target_attribute     (GtkConstraint          *constraint);
/* Zeile entfernt */
GtkConstraintTarget *   gtk_constraint_get_source               (GtkConstraint          *constraint);
/* Zeile entfernt */
GtkConstraintAttribute  gtk_constraint_get_source_attribute     (GtkConstraint          *constraint);
/* Zeile entfernt */
GtkConstraintRelation   gtk_constraint_get_relation             (GtkConstraint          *constraint);
/* Zeile entfernt */
double                  gtk_constraint_get_multiplier           (GtkConstraint          *constraint);
/* Zeile entfernt */
double                  gtk_constraint_get_constant             (GtkConstraint          *constraint);
/* Zeile entfernt */
int                     gtk_constraint_get_strength             (GtkConstraint          *constraint);

/* Zeile entfernt */
gboolean                gtk_constraint_is_required              (GtkConstraint          *constraint);
/* Zeile entfernt */
gboolean                gtk_constraint_is_attached              (GtkConstraint          *constraint);
/* Zeile entfernt */
gboolean                gtk_constraint_is_constant              (GtkConstraint          *constraint);

/* Zeile entfernt */
