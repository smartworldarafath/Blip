.class public final Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Ljava/util/List;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;->j:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;->l:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    and-int/lit8 v5, v4, 0x6

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    move-object v5, v3

    .line 32
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x2

    .line 43
    :goto_0
    or-int/2addr v1, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v1, v4

    .line 46
    :goto_1
    and-int/lit8 v4, v4, 0x30

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move-object v4, v3

    .line 51
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const/16 v4, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v4, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v1, v4

    .line 65
    :cond_3
    and-int/lit16 v4, v1, 0x93

    .line 66
    .line 67
    const/16 v5, 0x92

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x1

    .line 71
    if-eq v4, v5, :cond_4

    .line 72
    .line 73
    move v4, v7

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v4, v6

    .line 76
    :goto_3
    and-int/2addr v1, v7

    .line 77
    move-object v14, v3

    .line 78
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 79
    .line 80
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    iget-object v1, v0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;->j:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lnet/blip/android/ui/audiopicker/AudioFile;

    .line 93
    .line 94
    const v2, 0x2092e0e4

    .line 95
    .line 96
    .line 97
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$1;

    .line 101
    .line 102
    iget-object v3, v0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;->l:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 103
    .line 104
    invoke-direct {v2, v3}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$1;-><init>(Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;)V

    .line 105
    .line 106
    .line 107
    const v3, -0x2751cd63

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    iget-object v0, v0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4;->k:Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    or-int/2addr v2, v3

    .line 125
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v2, :cond_5

    .line 130
    .line 131
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 132
    .line 133
    if-ne v3, v2, :cond_6

    .line 134
    .line 135
    :cond_5
    new-instance v3, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;

    .line 136
    .line 137
    invoke-direct {v3, v0, v1}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/audiopicker/AudioFile;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    move-object v11, v3

    .line 144
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 145
    .line 146
    new-instance v0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$3;

    .line 147
    .line 148
    invoke-direct {v0, v1}, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$3;-><init>(Lnet/blip/android/ui/audiopicker/AudioFile;)V

    .line 149
    .line 150
    .line 151
    const v1, -0x396f4a88

    .line 152
    .line 153
    .line 154
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    const v15, 0x180030

    .line 159
    .line 160
    .line 161
    const/16 v16, 0x2d

    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    const/4 v9, 0x0

    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v12, 0x0

    .line 167
    invoke-static/range {v7 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 175
    .line 176
    .line 177
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object v0
.end method
