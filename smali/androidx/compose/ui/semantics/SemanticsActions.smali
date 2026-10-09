.class public abstract Landroidx/compose/ui/semantics/SemanticsActions;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    const-string v1, "GetTextLayoutResult"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;->j:Landroidx/compose/ui/semantics/SemanticsPropertiesKt$ActionPropertyKey$1;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 14
    .line 15
    const-string v1, "OnClick"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 23
    .line 24
    const-string v1, "OnLongClick"

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 32
    .line 33
    const-string v1, "ScrollBy"

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 39
    .line 40
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 41
    .line 42
    const-string v1, "ScrollByOffset"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 48
    .line 49
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 50
    .line 51
    const-string v1, "ScrollToIndex"

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->f:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 57
    .line 58
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 59
    .line 60
    const-string v1, "OnAutofillText"

    .line 61
    .line 62
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 66
    .line 67
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 68
    .line 69
    const-string v1, "OnFillData"

    .line 70
    .line 71
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 77
    .line 78
    const-string v1, "SetProgress"

    .line 79
    .line 80
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->i:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 84
    .line 85
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 86
    .line 87
    const-string v1, "SetSelection"

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 93
    .line 94
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 95
    .line 96
    const-string v1, "SetText"

    .line 97
    .line 98
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 102
    .line 103
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 104
    .line 105
    const-string v1, "SetTextSubstitution"

    .line 106
    .line 107
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 111
    .line 112
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 113
    .line 114
    const-string v1, "ShowTextSubstitution"

    .line 115
    .line 116
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->m:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 120
    .line 121
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 122
    .line 123
    const-string v1, "ClearTextSubstitution"

    .line 124
    .line 125
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->n:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 129
    .line 130
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 131
    .line 132
    const-string v1, "InsertTextAtCursor"

    .line 133
    .line 134
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 138
    .line 139
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 140
    .line 141
    const-string v1, "PerformImeAction"

    .line 142
    .line 143
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->p:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 147
    .line 148
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 149
    .line 150
    const-string v1, "CopyText"

    .line 151
    .line 152
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->q:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 156
    .line 157
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 158
    .line 159
    const-string v1, "CutText"

    .line 160
    .line 161
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 165
    .line 166
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 167
    .line 168
    const-string v1, "PasteText"

    .line 169
    .line 170
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 174
    .line 175
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 176
    .line 177
    const-string v1, "Expand"

    .line 178
    .line 179
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 180
    .line 181
    .line 182
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 183
    .line 184
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 185
    .line 186
    const-string v1, "Collapse"

    .line 187
    .line 188
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->u:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 192
    .line 193
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 194
    .line 195
    const-string v1, "Dismiss"

    .line 196
    .line 197
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->v:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 201
    .line 202
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 203
    .line 204
    const-string v1, "RequestFocus"

    .line 205
    .line 206
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 210
    .line 211
    new-instance v0, Lke;

    .line 212
    .line 213
    const/16 v1, 0x1b

    .line 214
    .line 215
    invoke-direct {v0, v1}, Lke;-><init>(I)V

    .line 216
    .line 217
    .line 218
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 219
    .line 220
    const-string v4, "CustomActions"

    .line 221
    .line 222
    invoke-direct {v1, v4, v2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 223
    .line 224
    .line 225
    sput-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->x:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 226
    .line 227
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 228
    .line 229
    const-string v1, "PageUp"

    .line 230
    .line 231
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 232
    .line 233
    .line 234
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 235
    .line 236
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 237
    .line 238
    const-string v1, "PageLeft"

    .line 239
    .line 240
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 241
    .line 242
    .line 243
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 244
    .line 245
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 246
    .line 247
    const-string v1, "PageDown"

    .line 248
    .line 249
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 250
    .line 251
    .line 252
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 253
    .line 254
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 255
    .line 256
    const-string v1, "PageRight"

    .line 257
    .line 258
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 259
    .line 260
    .line 261
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 262
    .line 263
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 264
    .line 265
    const-string v1, "GetScrollViewportLength"

    .line 266
    .line 267
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 268
    .line 269
    .line 270
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 271
    .line 272
    return-void
.end method
