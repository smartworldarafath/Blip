.class final Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;


# direct methods
.method public constructor <init>(Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$1;->j:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/lit8 v2, v1, 0x3

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    move v2, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    :goto_0
    and-int/2addr v1, v5

    .line 24
    move-object v13, v0

    .line 25
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {v13, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 34
    .line 35
    const/high16 v1, 0x42400000    # 48.0f

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-wide v1, 0xfffa6533L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    move-object/from16 v3, p0

    .line 51
    .line 52
    iget-object v3, v3, Lnet/blip/android/ui/audiopicker/AudioPickerScreenKt$AudioList$3$4$1$2$1;->j:Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 53
    .line 54
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 59
    .line 60
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-wide v2, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 65
    .line 66
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 84
    .line 85
    .line 86
    iget-boolean v4, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 87
    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    sget-object v4, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 91
    .line 92
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 97
    .line 98
    .line 99
    :goto_1
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 100
    .line 101
    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 105
    .line 106
    invoke-static {v13, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 114
    .line 115
    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 119
    .line 120
    .line 121
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 122
    .line 123
    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/compose/material/icons/rounded/MusicNoteKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0, v13}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->d:J

    .line 135
    .line 136
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    const v14, 0x180038

    .line 141
    .line 142
    .line 143
    const/16 v15, 0x3c

    .line 144
    .line 145
    const-string v7, ""

    .line 146
    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v10, 0x0

    .line 150
    const/4 v11, 0x0

    .line 151
    invoke-static/range {v6 .. v15}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 159
    .line 160
    .line 161
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object v0
.end method
