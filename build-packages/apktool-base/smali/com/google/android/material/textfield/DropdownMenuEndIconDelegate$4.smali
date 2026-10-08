.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->a:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/AutoCompleteTextView;

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->a:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->d:Landroid/text/TextWatcher;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/material/textfield/EndIconDelegate;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x1

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->m:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-ne v3, v5, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->l:Landroid/graphics/drawable/StateListDrawable;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const v8, 0x7f0400cd

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v8}, Lcom/google/android/material/color/MaterialColors;->a(Landroid/view/View;I)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const v9, 0x10100a7

    .line 63
    .line 64
    .line 65
    filled-new-array {v9}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    new-array v10, v6, [I

    .line 70
    .line 71
    filled-new-array {v9, v10}, [[I

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    const v10, 0x3dcccccd    # 0.1f

    .line 76
    .line 77
    .line 78
    if-ne v3, v4, :cond_3

    .line 79
    .line 80
    const v2, 0x7f0400dd

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/google/android/material/color/MaterialColors;->a(Landroid/view/View;I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 88
    .line 89
    invoke-virtual {v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->k()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-direct {v3, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v10, v8, v2}, Lcom/google/android/material/color/MaterialColors;->b(FII)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    filled-new-array {v8, v6}, [I

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    new-instance v11, Landroid/content/res/ColorStateList;

    .line 105
    .line 106
    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->r(Landroid/content/res/ColorStateList;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 113
    .line 114
    .line 115
    filled-new-array {v8, v2}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    new-instance v8, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {v8, v9, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 125
    .line 126
    invoke-virtual {v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->k()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-direct {v2, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 131
    .line 132
    .line 133
    const/4 v9, -0x1

    .line 134
    invoke-virtual {v2, v9}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 135
    .line 136
    .line 137
    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    .line 138
    .line 139
    invoke-direct {v9, v8, v3, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    new-array v2, v4, [Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    aput-object v9, v2, v6

    .line 145
    .line 146
    aput-object v7, v2, v5

    .line 147
    .line 148
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 149
    .line 150
    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 151
    .line 152
    .line 153
    sget-object v2, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 154
    .line 155
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    if-ne v3, v5, :cond_4

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-static {v10, v8, v2}, Lcom/google/android/material/color/MaterialColors;->b(FII)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    filled-new-array {v3, v2}, [I

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 174
    .line 175
    invoke-direct {v3, v9, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 179
    .line 180
    invoke-direct {v2, v3, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    .line 182
    .line 183
    sget-object v3, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :cond_4
    :goto_1
    new-instance v2, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;

    .line 189
    .line 190
    invoke-direct {v2, p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/widget/AutoCompleteTextView;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->e:Landroid/view/View$OnFocusChangeListener;

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    .line 200
    .line 201
    new-instance v2, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;

    .line 202
    .line 203
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$8;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 219
    .line 220
    .line 221
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->c:Lcom/google/android/material/internal/CheckableImageButton;

    .line 233
    .line 234
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/lang/reflect/Field;

    .line 235
    .line 236
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 237
    .line 238
    .line 239
    :goto_2
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->f:Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 240
    .line 241
    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_6
    const-string p0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    .line 249
    .line 250
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void
.end method
