.class public final synthetic Ly6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;I)V
    .locals 0

    .line 10
    iput p2, p0, Ly6;->j:I

    iput-object p1, p0, Ly6;->k:Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    iput p2, p0, Ly6;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ly6;->k:Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Ly6;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Ly6;->k:Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v2, v3

    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v4, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 32
    .line 33
    invoke-direct {v5, p1, v2}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Landroidx/compose/ui/text/AnnotatedString;I)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    new-array p1, p1, [Landroidx/compose/ui/text/input/EditCommand;

    .line 38
    .line 39
    aput-object v4, p1, v3

    .line 40
    .line 41
    aput-object v5, p1, v2

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 52
    .line 53
    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/input/EditProcessor;->a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v3, v0, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    .line 58
    .line 59
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroidx/compose/ui/text/input/TextInputSession;

    .line 66
    .line 67
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 74
    .line 75
    invoke-interface {v0, v1, p1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->f(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 83
    .line 84
    iget-object v4, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 85
    .line 86
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 87
    .line 88
    iget-wide v5, v0, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 89
    .line 90
    sget v0, Landroidx/compose/ui/text/TextRange;->c:I

    .line 91
    .line 92
    const/16 v0, 0x20

    .line 93
    .line 94
    shr-long v7, v5, v0

    .line 95
    .line 96
    long-to-int v7, v7

    .line 97
    const-wide v8, 0xffffffffL

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    and-long/2addr v5, v8

    .line 103
    long-to-int v5, v5

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    if-lt v5, v7, :cond_3

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v4, v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v1, v4, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    const-string v3, ") is less than start index ("

    .line 132
    .line 133
    const-string v4, ")."

    .line 134
    .line 135
    const-string v6, "End index ("

    .line 136
    .line 137
    invoke-static {v6, v5, v3, v7, v4}, Ljb;->e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v3}, Lu2;->o(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 149
    .line 150
    iget-wide v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 151
    .line 152
    shr-long/2addr v3, v0

    .line 153
    long-to-int v0, v3

    .line 154
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    add-int/2addr p1, v0

    .line 161
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 166
    .line 167
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 168
    .line 169
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 170
    .line 171
    const/4 v0, 0x4

    .line 172
    invoke-direct {p1, v0, v3, v4, v1}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    .line 184
    .line 185
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 186
    .line 187
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 188
    .line 189
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 190
    .line 191
    invoke-static {v0, p1, p0}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->b1(Landroidx/compose/foundation/text/LegacyTextFieldState;Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 198
    .line 199
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 200
    .line 201
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 208
    .line 209
    invoke-virtual {p0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Landroidx/compose/foundation/text/TextLayoutResultProxy;->a:Landroidx/compose/ui/text/TextLayoutResult;

    .line 217
    .line 218
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    move v2, v3

    .line 223
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    return-object p0

    .line 228
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/autofill/FillableData;

    .line 229
    .line 230
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 231
    .line 232
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->t:Landroidx/compose/runtime/MutableState;

    .line 233
    .line 234
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 235
    .line 236
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 242
    .line 243
    iget-object v0, v0, Landroidx/compose/foundation/text/LegacyTextFieldState;->s:Landroidx/compose/runtime/MutableState;

    .line 244
    .line 245
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 251
    .line 252
    check-cast p1, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 253
    .line 254
    iget-object p1, p1, Landroidx/compose/ui/autofill/AndroidFillableData;->a:Landroid/view/autofill/AutofillValue;

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_5

    .line 261
    .line 262
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    check-cast v1, Ljava/lang/String;

    .line 270
    .line 271
    iget-boolean p0, p0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 272
    .line 273
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->b1(Landroidx/compose/foundation/text/LegacyTextFieldState;Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    return-object v2

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
