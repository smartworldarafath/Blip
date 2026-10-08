.class final Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/material/ripple/RippleNode;

.field public final synthetic k:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/compose/material/ripple/RippleNode;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->j:Landroidx/compose/material/ripple/RippleNode;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 2
    .line 3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->j:Landroidx/compose/material/ripple/RippleNode;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-boolean p0, v0, Landroidx/compose/material/ripple/RippleNode;->E:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/compose/material/ripple/RippleNode;->Y0(Landroidx/compose/foundation/interaction/PressInteraction;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-object p0, v0, Landroidx/compose/material/ripple/RippleNode;->F:Landroidx/collection/MutableObjectList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    iget-object p2, v0, Landroidx/compose/material/ripple/RippleNode;->B:Landroidx/compose/material/ripple/StateLayer;

    .line 28
    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    new-instance p2, Landroidx/compose/material/ripple/StateLayer;

    .line 32
    .line 33
    iget-boolean v1, v0, Landroidx/compose/material/ripple/RippleNode;->y:Z

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/compose/material/ripple/RippleNode;->A:Landroidx/compose/material/b;

    .line 36
    .line 37
    invoke-direct {p2, v1, v2}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLandroidx/compose/material/b;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, v0, Landroidx/compose/material/ripple/RippleNode;->B:Landroidx/compose/material/ripple/StateLayer;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p2, Landroidx/compose/material/ripple/StateLayer;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    check-cast p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->a:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 80
    .line 81
    iget-object p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->a:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 96
    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 100
    .line 101
    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->a:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    instance-of v1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 108
    .line 109
    if-eqz v1, :cond_13

    .line 110
    .line 111
    check-cast p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 112
    .line 113
    iget-object p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->a:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 123
    .line 124
    iget-object v0, p2, Landroidx/compose/material/ripple/StateLayer;->e:Landroidx/compose/foundation/interaction/Interaction;

    .line 125
    .line 126
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_13

    .line 131
    .line 132
    const/4 v0, 0x3

    .line 133
    const/4 v1, 0x2

    .line 134
    const/4 v2, 0x0

    .line 135
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$1;->k:Lkotlinx/coroutines/CoroutineScope;

    .line 136
    .line 137
    if-eqz p1, :cond_f

    .line 138
    .line 139
    iget-object v3, p2, Landroidx/compose/material/ripple/StateLayer;->b:Landroidx/compose/material/b;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroidx/compose/material/b;->a()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Landroidx/compose/material/ripple/RippleAlpha;

    .line 146
    .line 147
    instance-of v4, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 148
    .line 149
    if-eqz v4, :cond_9

    .line 150
    .line 151
    iget v3, v3, Landroidx/compose/material/ripple/RippleAlpha;->c:F

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_9
    instance-of v5, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 155
    .line 156
    if-eqz v5, :cond_a

    .line 157
    .line 158
    iget v3, v3, Landroidx/compose/material/ripple/RippleAlpha;->b:F

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_a
    instance-of v5, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 162
    .line 163
    if-eqz v5, :cond_b

    .line 164
    .line 165
    iget v3, v3, Landroidx/compose/material/ripple/RippleAlpha;->a:F

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_b
    const/4 v3, 0x0

    .line 169
    :goto_1
    sget-object v5, Landroidx/compose/material/ripple/RippleKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 170
    .line 171
    if-eqz v4, :cond_c

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_c
    instance-of v4, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 175
    .line 176
    const/16 v6, 0x2d

    .line 177
    .line 178
    if-eqz v4, :cond_d

    .line 179
    .line 180
    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    .line 181
    .line 182
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 183
    .line 184
    invoke-direct {v5, v6, v4, v1}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_d
    instance-of v4, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 189
    .line 190
    if-eqz v4, :cond_e

    .line 191
    .line 192
    new-instance v5, Landroidx/compose/animation/core/TweenSpec;

    .line 193
    .line 194
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 195
    .line 196
    invoke-direct {v5, v6, v4, v1}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 197
    .line 198
    .line 199
    :cond_e
    :goto_2
    new-instance v1, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    .line 200
    .line 201
    invoke-direct {v1, p2, v3, v5, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p0, v2, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_f
    iget-object v3, p2, Landroidx/compose/material/ripple/StateLayer;->e:Landroidx/compose/foundation/interaction/Interaction;

    .line 209
    .line 210
    sget-object v4, Landroidx/compose/material/ripple/RippleKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 211
    .line 212
    instance-of v5, v3, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 213
    .line 214
    if-eqz v5, :cond_10

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_10
    instance-of v5, v3, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 218
    .line 219
    if-eqz v5, :cond_11

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_11
    instance-of v3, v3, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 223
    .line 224
    if-eqz v3, :cond_12

    .line 225
    .line 226
    new-instance v4, Landroidx/compose/animation/core/TweenSpec;

    .line 227
    .line 228
    const/16 v3, 0x96

    .line 229
    .line 230
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 231
    .line 232
    invoke-direct {v4, v3, v5, v1}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 233
    .line 234
    .line 235
    :cond_12
    :goto_3
    new-instance v1, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    .line 236
    .line 237
    invoke-direct {v1, p2, v4, v2}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 238
    .line 239
    .line 240
    invoke-static {p0, v2, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 241
    .line 242
    .line 243
    :goto_4
    iput-object p1, p2, Landroidx/compose/material/ripple/StateLayer;->e:Landroidx/compose/foundation/interaction/Interaction;

    .line 244
    .line 245
    :cond_13
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 246
    .line 247
    return-object p0
.end method
