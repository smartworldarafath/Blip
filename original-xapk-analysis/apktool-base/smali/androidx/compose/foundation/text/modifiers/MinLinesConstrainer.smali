.class public final Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;
    }
.end annotation


# static fields
.field public static h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;


# instance fields
.field public final a:Landroidx/compose/ui/unit/LayoutDirection;

.field public final b:Landroidx/compose/ui/text/TextStyle;

.field public final c:Landroidx/compose/ui/unit/Density;

.field public final d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final e:Landroidx/compose/ui/text/TextStyle;

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->a:Landroidx/compose/ui/unit/LayoutDirection;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->b:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->c:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 11
    .line 12
    invoke-static {p2, p1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->e:Landroidx/compose/ui/text/TextStyle;

    .line 17
    .line 18
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 19
    .line 20
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->f:F

    .line 21
    .line 22
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->g:F

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(IJ)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->g:F

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->f:F

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    :cond_0
    sget-object v10, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;->a:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v7, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 26
    .line 27
    iget-object v11, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->e:Landroidx/compose/ui/text/TextStyle;

    .line 28
    .line 29
    sget-object v12, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 30
    .line 31
    iget-object v14, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 32
    .line 33
    iget-object v15, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->c:Landroidx/compose/ui/unit/Density;

    .line 34
    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    move-object v13, v12

    .line 38
    move-object v9, v7

    .line 39
    invoke-direct/range {v9 .. v16}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Z)V

    .line 40
    .line 41
    .line 42
    const/16 v2, 0xf

    .line 43
    .line 44
    invoke-static {v5, v5, v5, v5, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 45
    .line 46
    .line 47
    move-result-wide v10

    .line 48
    new-instance v6, Landroidx/compose/ui/text/AndroidParagraph;

    .line 49
    .line 50
    move v9, v8

    .line 51
    invoke-direct/range {v6 .. v11}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/AndroidParagraphIntrinsics;IIJ)V

    .line 52
    .line 53
    .line 54
    move-object v3, v6

    .line 55
    sget-object v13, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainerKt;->b:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v7, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 58
    .line 59
    iget-object v14, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->e:Landroidx/compose/ui/text/TextStyle;

    .line 60
    .line 61
    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->d:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 62
    .line 63
    const/16 v19, 0x1

    .line 64
    .line 65
    move-object/from16 v16, v12

    .line 66
    .line 67
    move-object/from16 v17, v4

    .line 68
    .line 69
    move-object/from16 v18, v15

    .line 70
    .line 71
    move-object v15, v12

    .line 72
    move-object v12, v7

    .line 73
    invoke-direct/range {v12 .. v19}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v5, v5, v5, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    new-instance v6, Landroidx/compose/ui/text/AndroidParagraph;

    .line 81
    .line 82
    const/4 v8, 0x2

    .line 83
    invoke-direct/range {v6 .. v11}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/AndroidParagraphIntrinsics;IIJ)V

    .line 84
    .line 85
    .line 86
    move v8, v9

    .line 87
    iget v2, v6, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 88
    .line 89
    iget v3, v3, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 90
    .line 91
    sub-float/2addr v2, v3

    .line 92
    iput v3, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->g:F

    .line 93
    .line 94
    iput v2, v0, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->f:F

    .line 95
    .line 96
    move/from16 v20, v3

    .line 97
    .line 98
    move v3, v2

    .line 99
    move/from16 v2, v20

    .line 100
    .line 101
    :cond_1
    if-eq v1, v8, :cond_3

    .line 102
    .line 103
    add-int/lit8 v0, v1, -0x1

    .line 104
    .line 105
    int-to-float v0, v0

    .line 106
    mul-float/2addr v3, v0

    .line 107
    add-float/2addr v3, v2

    .line 108
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-gez v0, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move v5, v0

    .line 116
    :goto_0
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-le v5, v0, :cond_4

    .line 121
    .line 122
    move v5, v0

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    :cond_4
    :goto_1
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-static {v1, v2, v5, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    return-wide v0
.end method
