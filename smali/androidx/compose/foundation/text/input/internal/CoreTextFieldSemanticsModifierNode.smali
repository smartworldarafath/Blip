.class public final Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public A:Landroidx/compose/ui/text/input/TextFieldValue;

.field public B:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public C:Z

.field public D:Landroidx/compose/ui/text/input/OffsetMapping;

.field public E:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public F:Landroidx/compose/ui/text/input/ImeOptions;

.field public G:Landroidx/compose/ui/focus/FocusRequester;

.field public z:Landroidx/compose/ui/text/input/TransformedText;


# direct methods
.method public static b1(Landroidx/compose/foundation/text/LegacyTextFieldState;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    new-instance v1, Landroidx/compose/ui/text/input/DeleteAllCommand;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, p1, v3}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    new-array p1, p1, [Landroidx/compose/ui/text/input/EditCommand;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v1, p1, v4

    .line 26
    .line 27
    aput-object v2, p1, v3

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/EditProcessor;->a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p1, p2, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroidx/compose/ui/text/input/TextInputSession;

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p2, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-interface {p1, p2, p0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->f(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0, p0}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    new-instance p0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p2, p2}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    const/4 p2, 0x4

    .line 76
    invoke-direct {p0, p2, v1, v2, p1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->F:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 10
    .line 11
    const/16 v3, 0x12

    .line 12
    .line 13
    aget-object v3, v2, v3

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->z:Landroidx/compose/ui/text/input/TransformedText;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 24
    .line 25
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 26
    .line 27
    const/16 v3, 0x13

    .line 28
    .line 29
    aget-object v3, v2, v3

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 38
    .line 39
    iget-wide v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 40
    .line 41
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->H:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 42
    .line 43
    const/16 v4, 0x14

    .line 44
    .line 45
    aget-object v4, v2, v4

    .line 46
    .line 47
    new-instance v4, Landroidx/compose/ui/text/TextRange;

    .line 48
    .line 49
    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 59
    .line 60
    const/16 v1, 0x9

    .line 61
    .line 62
    aget-object v1, v2, v1

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    sget-object v1, Landroidx/compose/ui/autofill/ContentDataType$Companion;->b:Landroidx/compose/ui/autofill/ContentDataType;

    .line 68
    .line 69
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 75
    .line 76
    new-instance v1, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 77
    .line 78
    invoke-static {v0}, Landroidx/compose/ui/autofill/AutofillUtils_androidKt;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v1, v0}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 90
    .line 91
    const/16 v3, 0xa

    .line 92
    .line 93
    aget-object v3, v2, v3

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Ly6;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-direct {v0, p0, v1}, Ly6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 105
    .line 106
    .line 107
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 108
    .line 109
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-direct {v3, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->F:Landroidx/compose/ui/text/input/ImeOptions;

    .line 119
    .line 120
    iget v0, v0, Landroidx/compose/ui/text/input/ImeOptions;->d:I

    .line 121
    .line 122
    const/4 v1, 0x7

    .line 123
    const/4 v3, 0x6

    .line 124
    if-ne v0, v3, :cond_0

    .line 125
    .line 126
    sget-object v0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->c:Landroidx/compose/ui/autofill/ContentType;

    .line 132
    .line 133
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/autofill/ContentType;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_0
    if-ne v0, v1, :cond_1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    const/16 v5, 0x8

    .line 141
    .line 142
    if-ne v0, v5, :cond_2

    .line 143
    .line 144
    :goto_0
    sget-object v0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    sget-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->b:Landroidx/compose/ui/autofill/ContentType;

    .line 150
    .line 151
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/autofill/ContentType;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    const/4 v5, 0x4

    .line 156
    if-ne v0, v5, :cond_3

    .line 157
    .line 158
    sget-object v0, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    sget-object v0, Landroidx/compose/ui/autofill/ContentType$Companion;->d:Landroidx/compose/ui/autofill/ContentType;

    .line 164
    .line 165
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->b(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/autofill/ContentType;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 169
    .line 170
    if-nez v0, :cond_4

    .line 171
    .line 172
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 173
    .line 174
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    invoke-interface {p1, v0, v5}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 180
    .line 181
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->Q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 182
    .line 183
    const/16 v6, 0x1c

    .line 184
    .line 185
    aget-object v2, v2, v6

    .line 186
    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, v5, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    new-instance v2, Ly6;

    .line 198
    .line 199
    const/4 v5, 0x1

    .line 200
    invoke-direct {v2, p0, v5}, Ly6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 201
    .line 202
    .line 203
    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/jvm/functions/Function1;)V

    .line 204
    .line 205
    .line 206
    const/4 v2, 0x2

    .line 207
    if-eqz v0, :cond_5

    .line 208
    .line 209
    new-instance v0, Ly6;

    .line 210
    .line 211
    invoke-direct {v0, p0, v2}, Ly6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 212
    .line 213
    .line 214
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 215
    .line 216
    new-instance v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 217
    .line 218
    invoke-direct {v7, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v6, v7}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Ly6;

    .line 225
    .line 226
    invoke-direct {v0, p0, p1}, Ly6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 227
    .line 228
    .line 229
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 230
    .line 231
    new-instance v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 232
    .line 233
    invoke-direct {v7, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1, v6, v7}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_5
    new-instance v0, Lb0;

    .line 240
    .line 241
    const/4 v6, 0x3

    .line 242
    invoke-direct {v0, v6, p0}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsActions;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 246
    .line 247
    new-instance v8, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 248
    .line 249
    invoke-direct {v8, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, v7, v8}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->F:Landroidx/compose/ui/text/input/ImeOptions;

    .line 256
    .line 257
    iget v0, v0, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    .line 258
    .line 259
    new-instance v7, Lx6;

    .line 260
    .line 261
    invoke-direct {v7, p0, v3}, Lx6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 262
    .line 263
    .line 264
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->J:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 265
    .line 266
    new-instance v8, Landroidx/compose/ui/text/input/ImeAction;

    .line 267
    .line 268
    invoke-direct {v8, v0}, Landroidx/compose/ui/text/input/ImeAction;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p1, v3, v8}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 275
    .line 276
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 277
    .line 278
    invoke-direct {v3, v4, v7}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, v0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lx6;

    .line 285
    .line 286
    invoke-direct {v0, p0, v1}, Lx6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 287
    .line 288
    .line 289
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 290
    .line 291
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 292
    .line 293
    invoke-direct {v3, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {p1, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, Lx6;

    .line 300
    .line 301
    invoke-direct {v0, p0, v5}, Lx6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 302
    .line 303
    .line 304
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 305
    .line 306
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 307
    .line 308
    invoke-direct {v3, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {p1, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 315
    .line 316
    iget-wide v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 317
    .line 318
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->c(J)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_6

    .line 323
    .line 324
    new-instance v0, Lx6;

    .line 325
    .line 326
    invoke-direct {v0, p0, v2}, Lx6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 327
    .line 328
    .line 329
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 330
    .line 331
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 332
    .line 333
    invoke-direct {v2, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 340
    .line 341
    if-eqz v0, :cond_6

    .line 342
    .line 343
    new-instance v0, Lx6;

    .line 344
    .line 345
    invoke-direct {v0, p0, v6}, Lx6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 346
    .line 347
    .line 348
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 349
    .line 350
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 351
    .line 352
    invoke-direct {v2, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 353
    .line 354
    .line 355
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_6
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 359
    .line 360
    if-eqz v0, :cond_7

    .line 361
    .line 362
    new-instance v0, Lx6;

    .line 363
    .line 364
    const/4 v1, 0x5

    .line 365
    invoke-direct {v0, p0, v1}, Lx6;-><init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V

    .line 366
    .line 367
    .line 368
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 369
    .line 370
    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 371
    .line 372
    invoke-direct {v1, v4, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 373
    .line 374
    .line 375
    invoke-interface {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_7
    return-void
.end method

.method public final J0()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
