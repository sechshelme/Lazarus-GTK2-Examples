/* gtkconstraintguide.h: Flexible space for constraints
 * Copyright 2019 Red Hat, Inc.
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
 * Author: Matthias Clasen
 */

#pragma once

#include <gtk/gtktypes.h>
#include <gtk/gtkenums.h>
#include <gtk/gtktypebuiltins.h>



#define GTK_TYPE_CONSTRAINT_GUIDE (gtk_constraint_guide_get_type ())


//G_DECLARE_FINAL_TYPE (GtkConstraintGuide, gtk_constraint_guide, GTK, CONSTRAINT_GUIDE, GObject)


GtkConstraintGuide *    gtk_constraint_guide_new                (void);


void                    gtk_constraint_guide_set_min_size       (GtkConstraintGuide *guide,
                                                                 int                 width,
                                                                 int                 height);

void                    gtk_constraint_guide_get_min_size       (GtkConstraintGuide *guide,
                                                                 int                *width,
                                                                 int                *height);

void                    gtk_constraint_guide_set_nat_size       (GtkConstraintGuide *guide,
                                                                 int                 width,
                                                                 int                 height);

void                    gtk_constraint_guide_get_nat_size       (GtkConstraintGuide *guide,
                                                                 int                *width,
                                                                 int                *height);

void                    gtk_constraint_guide_set_max_size       (GtkConstraintGuide *guide,
                                                                 int                 width,
                                                                 int                 height);

void                    gtk_constraint_guide_get_max_size       (GtkConstraintGuide *guide,
                                                                 int                *width,
                                                                 int                *height);


GtkConstraintStrength   gtk_constraint_guide_get_strength       (GtkConstraintGuide *guide);

void                    gtk_constraint_guide_set_strength       (GtkConstraintGuide    *guide,
                                                                 GtkConstraintStrength  strength);


void                    gtk_constraint_guide_set_name           (GtkConstraintGuide *guide,
                                                                 const char         *name);

const char *            gtk_constraint_guide_get_name           (GtkConstraintGuide *guide);


