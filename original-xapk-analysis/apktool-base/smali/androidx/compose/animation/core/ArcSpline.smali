.class public final Landroidx/compose/animation/core/ArcSpline;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/ArcSpline$Arc;
    }
.end annotation


# instance fields
.field public final a:[[Landroidx/compose/animation/core/ArcSpline$Arc;


# direct methods
.method public constructor <init>([I[F[[F)V
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    new-array v3, v1, [[Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move v6, v2

    .line 13
    move v7, v6

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v1, :cond_5

    .line 16
    .line 17
    aget v8, p1, v5

    .line 18
    .line 19
    const/4 v9, 0x3

    .line 20
    const/4 v10, 0x2

    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    if-eq v8, v2, :cond_3

    .line 24
    .line 25
    if-eq v8, v10, :cond_2

    .line 26
    .line 27
    if-eq v8, v9, :cond_1

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    if-eq v8, v9, :cond_0

    .line 31
    .line 32
    const/4 v9, 0x5

    .line 33
    if-eq v8, v9, :cond_0

    .line 34
    .line 35
    move v12, v7

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    move v12, v9

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    if-ne v6, v2, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    move v12, v6

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    :goto_2
    move v6, v10

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move v6, v2

    .line 47
    goto :goto_1

    .line 48
    :goto_3
    aget-object v7, p3, v5

    .line 49
    .line 50
    add-int/lit8 v8, v5, 0x1

    .line 51
    .line 52
    aget-object v9, p3, v8

    .line 53
    .line 54
    aget v13, v0, v5

    .line 55
    .line 56
    aget v14, v0, v8

    .line 57
    .line 58
    array-length v11, v7

    .line 59
    div-int/2addr v11, v10

    .line 60
    array-length v15, v7

    .line 61
    rem-int/2addr v15, v10

    .line 62
    add-int v10, v15, v11

    .line 63
    .line 64
    new-array v11, v10, [Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 65
    .line 66
    move v15, v4

    .line 67
    :goto_4
    if-ge v15, v10, :cond_4

    .line 68
    .line 69
    mul-int/lit8 v16, v15, 0x2

    .line 70
    .line 71
    move-object/from16 v17, v11

    .line 72
    .line 73
    new-instance v11, Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 74
    .line 75
    move/from16 v18, v15

    .line 76
    .line 77
    aget v15, v7, v16

    .line 78
    .line 79
    add-int/lit8 v19, v16, 0x1

    .line 80
    .line 81
    move/from16 v20, v16

    .line 82
    .line 83
    aget v16, v7, v19

    .line 84
    .line 85
    aget v20, v9, v20

    .line 86
    .line 87
    aget v19, v9, v19

    .line 88
    .line 89
    move/from16 v21, v19

    .line 90
    .line 91
    move-object/from16 v19, v17

    .line 92
    .line 93
    move/from16 v17, v20

    .line 94
    .line 95
    move/from16 v20, v18

    .line 96
    .line 97
    move/from16 v18, v21

    .line 98
    .line 99
    invoke-direct/range {v11 .. v18}, Landroidx/compose/animation/core/ArcSpline$Arc;-><init>(IFFFFFF)V

    .line 100
    .line 101
    .line 102
    aput-object v11, v19, v20

    .line 103
    .line 104
    add-int/lit8 v15, v20, 0x1

    .line 105
    .line 106
    move-object/from16 v11, v19

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    move-object/from16 v19, v11

    .line 110
    .line 111
    aput-object v19, v3, v5

    .line 112
    .line 113
    move v5, v8

    .line 114
    move v7, v12

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    move-object/from16 v5, p0

    .line 117
    .line 118
    iput-object v3, v5, Landroidx/compose/animation/core/ArcSpline;->a:[[Landroidx/compose/animation/core/ArcSpline$Arc;

    .line 119
    .line 120
    return-void
.end method
