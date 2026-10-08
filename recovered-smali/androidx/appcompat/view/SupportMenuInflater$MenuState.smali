.class Landroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuState"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Landroid/content/res/ColorStateList;

.field public C:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic D:Landroidx/appcompat/view/SupportMenuInflater;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroidx/appcompat/view/SupportMenuInflater;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->B:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a:Landroid/view/Menu;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 15
    .line 16
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 17
    .line 18
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 19
    .line 20
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroidx/appcompat/view/SupportMenuInflater;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Cannot instantiate class: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "SupportMenuInflater"

    .line 43
    .line 44
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroidx/appcompat/view/SupportMenuInflater;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->s:Z

    .line 6
    .line 7
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->t:Z

    .line 12
    .line 13
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->u:Z

    .line 18
    .line 19
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-lt v3, v5, :cond_0

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v4

    .line 32
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->m:I

    .line 43
    .line 44
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->v:I

    .line 48
    .line 49
    if-ltz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    .line 65
    .line 66
    iget-object v3, v0, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-static {v1}, Landroidx/appcompat/view/SupportMenuInflater;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    .line 75
    .line 76
    :cond_2
    iget-object v1, v0, Landroidx/appcompat/view/SupportMenuInflater;->d:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, v2, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->a:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :try_start_0
    sget-object v6, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->c:[Ljava/lang/Class;

    .line 90
    .line 91
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iput-object v6, v2, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Landroid/view/InflateException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "Couldn\'t resolve menu item onClick handler "

    .line 107
    .line 108
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, " in class "

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_3
    const-string p0, "The android:onClick attribute cannot be used within a restricted context"

    .line 138
    .line 139
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    :goto_1
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    .line 144
    .line 145
    const/4 v2, 0x2

    .line 146
    if-lt v1, v2, :cond_5

    .line 147
    .line 148
    instance-of v1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 149
    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    move-object v1, p1

    .line 153
    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 154
    .line 155
    iget v2, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->x:I

    .line 156
    .line 157
    and-int/lit8 v2, v2, -0x5

    .line 158
    .line 159
    or-int/lit8 v2, v2, 0x4

    .line 160
    .line 161
    iput v2, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->x:I

    .line 162
    .line 163
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 164
    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    sget-object v2, Landroidx/appcompat/view/SupportMenuInflater;->e:[Ljava/lang/Class;

    .line 168
    .line 169
    iget-object v0, v0, Landroidx/appcompat/view/SupportMenuInflater;->a:[Ljava/lang/Object;

    .line 170
    .line 171
    invoke-virtual {p0, v1, v2, v0}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/view/View;

    .line 176
    .line 177
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 178
    .line 179
    .line 180
    move v4, v5

    .line 181
    :cond_6
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->w:I

    .line 182
    .line 183
    if-lez v0, :cond_8

    .line 184
    .line 185
    if-nez v4, :cond_7

    .line 186
    .line 187
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_7
    const-string v0, "SupportMenuInflater"

    .line 192
    .line 193
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 194
    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :cond_8
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->z:Ljava/lang/CharSequence;

    .line 199
    .line 200
    instance-of v1, p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 201
    .line 202
    if-eqz v1, :cond_9

    .line 203
    .line 204
    move-object v2, p1

    .line 205
    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    .line 206
    .line 207
    invoke-interface {v2, v0}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_9
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 212
    .line 213
    .line 214
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->A:Ljava/lang/CharSequence;

    .line 215
    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    move-object v2, p1

    .line 219
    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    .line 220
    .line 221
    invoke-interface {v2, v0}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_a
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 226
    .line 227
    .line 228
    :goto_4
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->n:C

    .line 229
    .line 230
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->o:I

    .line 231
    .line 232
    if-eqz v1, :cond_b

    .line 233
    .line 234
    move-object v3, p1

    .line 235
    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    .line 236
    .line 237
    invoke-interface {v3, v0, v2}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_b
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 242
    .line 243
    .line 244
    :goto_5
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->p:C

    .line 245
    .line 246
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->q:I

    .line 247
    .line 248
    if-eqz v1, :cond_c

    .line 249
    .line 250
    move-object v3, p1

    .line 251
    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    .line 252
    .line 253
    invoke-interface {v3, v0, v2}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_c
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 258
    .line 259
    .line 260
    :goto_6
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/graphics/PorterDuff$Mode;

    .line 261
    .line 262
    if-eqz v0, :cond_e

    .line 263
    .line 264
    if-eqz v1, :cond_d

    .line 265
    .line 266
    move-object v2, p1

    .line 267
    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    .line 268
    .line 269
    invoke-interface {v2, v0}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_d
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 274
    .line 275
    .line 276
    :cond_e
    :goto_7
    iget-object p0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->B:Landroid/content/res/ColorStateList;

    .line 277
    .line 278
    if-eqz p0, :cond_10

    .line 279
    .line 280
    if-eqz v1, :cond_f

    .line 281
    .line 282
    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 283
    .line 284
    invoke-interface {p1, p0}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_f
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 289
    .line 290
    .line 291
    :cond_10
    return-void
.end method
