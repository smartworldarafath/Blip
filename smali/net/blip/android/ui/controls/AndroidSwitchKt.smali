.class public abstract Lnet/blip/android/ui/controls/AndroidSwitchKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/android/ui/controls/Colors;

.field public static final b:Lnet/blip/android/ui/controls/Colors;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lnet/blip/android/ui/controls/Colors;

    .line 2
    .line 3
    const-wide v1, 0xff6b0effL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    move-wide v3, v1

    .line 9
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const/high16 v13, 0x3e800000    # 0.25f

    .line 18
    .line 19
    invoke-static {v3, v4, v13}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide v5, 0xfff2f2f2L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->b:J

    .line 33
    .line 34
    invoke-static {v7, v8, v13}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    const-wide v11, 0xffd9d9d9L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    const v14, 0x3d8f5c29    # 0.07f

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v8, v14}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    move-wide/from16 v27, v11

    .line 55
    .line 56
    move-wide v11, v7

    .line 57
    move-wide v7, v9

    .line 58
    move-wide/from16 v9, v27

    .line 59
    .line 60
    invoke-direct/range {v0 .. v12}, Lnet/blip/android/ui/controls/Colors;-><init>(JJJJJJ)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lnet/blip/android/ui/controls/AndroidSwitchKt;->a:Lnet/blip/android/ui/controls/Colors;

    .line 64
    .line 65
    new-instance v14, Lnet/blip/android/ui/controls/Colors;

    .line 66
    .line 67
    const-wide v0, 0xff8335ffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v15

    .line 76
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {v0, v1, v13}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 81
    .line 82
    .line 83
    move-result-wide v17

    .line 84
    const-wide v0, 0xff505050L

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v19

    .line 93
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->d:J

    .line 94
    .line 95
    const v2, 0x3df5c28f    # 0.12f

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 99
    .line 100
    .line 101
    move-result-wide v21

    .line 102
    const-wide v2, 0xff303030L

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v23

    .line 111
    const v2, 0x3d4ccccd    # 0.05f

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 115
    .line 116
    .line 117
    move-result-wide v25

    .line 118
    invoke-direct/range {v14 .. v26}, Lnet/blip/android/ui/controls/Colors;-><init>(JJJJJJ)V

    .line 119
    .line 120
    .line 121
    sput-object v14, Lnet/blip/android/ui/controls/AndroidSwitchKt;->b:Lnet/blip/android/ui/controls/Colors;

    .line 122
    .line 123
    return-void
.end method

.method public static final a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v5, p5

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p5, 0x90037d4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p5}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    const/4 p5, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p5, 0x2

    .line 19
    :goto_0
    or-int/2addr p5, p6

    .line 20
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p5, v0

    .line 32
    or-int/lit16 p5, p5, 0x6c00

    .line 33
    .line 34
    and-int/lit16 v0, p5, 0x2493

    .line 35
    .line 36
    const/16 v1, 0x2492

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    move v0, v7

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    :goto_2
    and-int/lit8 v1, p5, 0x1

    .line 45
    .line 46
    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 57
    .line 58
    if-ne p3, p4, :cond_3

    .line 59
    .line 60
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    move-object v3, p3

    .line 68
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 69
    .line 70
    invoke-static {v5}, Lnet/blip/shared/LightDarkThemeKt;->a(Landroidx/compose/runtime/Composer;)Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    sget-object p3, Lnet/blip/android/ui/controls/AndroidSwitchKt;->a:Lnet/blip/android/ui/controls/Colors;

    .line 77
    .line 78
    :goto_3
    move-object v4, p3

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    sget-object p3, Lnet/blip/android/ui/controls/AndroidSwitchKt;->b:Lnet/blip/android/ui/controls/Colors;

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_4
    const p3, 0xfffe

    .line 84
    .line 85
    .line 86
    and-int v6, p5, p3

    .line 87
    .line 88
    move v0, p0

    .line 89
    move-object v1, p1

    .line 90
    move-object v2, p2

    .line 91
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/SwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SwitchColors;Landroidx/compose/runtime/Composer;I)V

    .line 92
    .line 93
    .line 94
    move p1, v0

    .line 95
    move-object p2, v1

    .line 96
    move-object p5, v3

    .line 97
    move p4, v7

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    move-object v2, p2

    .line 100
    move-object p2, p1

    .line 101
    move p1, p0

    .line 102
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 103
    .line 104
    .line 105
    move-object p5, p4

    .line 106
    move p4, p3

    .line 107
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    new-instance p0, Le2;

    .line 114
    .line 115
    move-object p3, v2

    .line 116
    invoke-direct/range {p0 .. p6}, Le2;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;I)V

    .line 117
    .line 118
    .line 119
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    :cond_6
    return-void
.end method
