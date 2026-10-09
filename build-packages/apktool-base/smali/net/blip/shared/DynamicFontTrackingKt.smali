.class public abstract Lnet/blip/shared/DynamicFontTrackingKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/blip/shared/DynamicFontTrackingKt;->a:Ljava/util/IdentityHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    .line 9
    .line 10
    iget-wide v3, v1, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    sget-object v5, Lnet/blip/shared/DynamicFontTrackingKt;->a:Ljava/util/IdentityHashMap;

    .line 15
    .line 16
    invoke-virtual {v5, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-wide v5, v1, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->b:[Landroidx/compose/ui/unit/TextUnitType;

    .line 28
    .line 29
    const-wide v7, 0xff00000000L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long v9, v3, v7

    .line 35
    .line 36
    const-wide/16 v11, 0x0

    .line 37
    .line 38
    cmp-long v1, v9, v11

    .line 39
    .line 40
    const/4 v13, 0x0

    .line 41
    const-wide v14, 0x100000000L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-string v16, "Failed requirement."

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    cmp-long v1, v9, v14

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    and-long v9, v5, v7

    .line 62
    .line 63
    cmp-long v1, v9, v11

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    cmp-long v1, v9, v14

    .line 68
    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    mul-float/2addr v3, v1

    .line 80
    invoke-static {v14, v15, v3}, Landroidx/compose/ui/unit/TextUnitKt;->e(JF)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    :goto_0
    new-instance v1, Landroidx/compose/ui/unit/TextUnit;

    .line 85
    .line 86
    invoke-direct {v1, v5, v6}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 94
    .line 95
    iget-wide v1, v1, Landroidx/compose/ui/unit/TextUnit;->a:J

    .line 96
    .line 97
    and-long v5, v1, v7

    .line 98
    .line 99
    cmp-long v5, v5, v14

    .line 100
    .line 101
    if-nez v5, :cond_4

    .line 102
    .line 103
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-float/2addr v1, v3

    .line 112
    invoke-static {v14, v15, v1}, Landroidx/compose/ui/unit/TextUnitKt;->e(JF)J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    :cond_3
    :goto_1
    move-wide v6, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    invoke-static/range {v16 .. v16}, Lu2;->g(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v13

    .line 122
    :cond_5
    invoke-static/range {v16 .. v16}, Lu2;->g(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v13

    .line 126
    :cond_6
    invoke-static/range {v16 .. v16}, Lu2;->g(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v13

    .line 130
    :goto_2
    const/4 v11, 0x0

    .line 131
    const v12, 0xffff7f

    .line 132
    .line 133
    .line 134
    const-wide/16 v1, 0x0

    .line 135
    .line 136
    const-wide/16 v3, 0x0

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    const-wide/16 v8, 0x0

    .line 140
    .line 141
    const/4 v10, 0x0

    .line 142
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method
