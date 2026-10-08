.class public final Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:Landroidx/compose/ui/text/AnnotatedString;

.field public b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

.field public i:J

.field public j:Landroidx/compose/ui/unit/Density;

.field public k:Landroidx/compose/ui/text/TextStyle;

.field public l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field public m:Landroidx/compose/ui/unit/LayoutDirection;

.field public n:Landroidx/compose/ui/text/TextLayoutResult;

.field public o:I

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 7
    .line 8
    iput p4, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c:I

    .line 9
    .line 10
    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e:I

    .line 13
    .line 14
    iput p7, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->g:Ljava/util/List;

    .line 17
    .line 18
    sget-wide p3, Landroidx/compose/foundation/text/modifiers/InlineDensity;->a:J

    .line 19
    .line 20
    iput-wide p3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->i:J

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 26
    .line 27
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1, p1, v1, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-le v2, v3, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 34
    .line 35
    invoke-static {v2, p2, v3, v4, v5}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;->a(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 40
    .line 41
    iget v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 42
    .line 43
    invoke-virtual {v2, v3, v0, v1}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->a(IJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    :cond_1
    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget p2, p2, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 52
    .line 53
    invoke-static {p2}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ge p2, v0, :cond_2

    .line 62
    .line 63
    move p2, v0

    .line 64
    :cond_2
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 65
    .line 66
    iput p2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 67
    .line 68
    return p2
.end method

.method public final b(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 6

    .line 1
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    new-instance v0, Landroidx/compose/ui/text/MultiParagraph;

    .line 6
    .line 7
    iget-boolean p3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c:I

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p1, p2, p3, v2, v3}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->a(JZIF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 20
    .line 21
    iget v5, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c:I

    .line 22
    .line 23
    iget p0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e:I

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    if-ne v5, p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x4

    .line 33
    if-ne v5, p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x5

    .line 37
    if-ne v5, p1, :cond_2

    .line 38
    .line 39
    :goto_0
    move v4, p2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    if-ge p0, p2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move v4, p0

    .line 45
    :goto_1
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JII)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public final c(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    shl-long/2addr v0, v2

    .line 5
    const-wide/16 v2, 0x3

    .line 6
    .line 7
    or-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 25
    .line 26
    invoke-static {v0, p3, v2, v3, v4}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer$Companion;->a(Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->h:Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;

    .line 31
    .line 32
    iget v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f:I

    .line 33
    .line 34
    invoke-virtual {v0, v2, p1, p2}, Landroidx/compose/foundation/text/modifiers/MinLinesConstrainer;->a(IJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 46
    .line 47
    iget-object v3, v2, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v3, v0, Landroidx/compose/ui/text/TextLayoutInput;->h:Landroidx/compose/ui/unit/LayoutDirection;

    .line 57
    .line 58
    iget-wide v4, v0, Landroidx/compose/ui/text/TextLayoutInput;->j:J

    .line 59
    .line 60
    if-eq p3, v3, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1, p2, v4, v5}, Landroidx/compose/ui/unit/Constraints;->b(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eq v0, v3, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eq v0, v3, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-float v0, v0

    .line 97
    iget v3, v2, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 98
    .line 99
    cmpg-float v0, v0, v3

    .line 100
    .line 101
    if-ltz v0, :cond_9

    .line 102
    .line 103
    iget-boolean v0, v2, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 114
    .line 115
    iget-wide v2, v0, Landroidx/compose/ui/text/TextLayoutInput;->j:J

    .line 116
    .line 117
    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/unit/Constraints;->b(JJ)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_8

    .line 122
    .line 123
    const/4 p0, 0x0

    .line 124
    return p0

    .line 125
    :cond_8
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 131
    .line 132
    invoke-virtual {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 137
    .line 138
    return v1

    .line 139
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->f(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 148
    .line 149
    return v1
.end method

.method public final d(Landroidx/compose/ui/unit/Density;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget v1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->b:I

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p1}, Landroidx/compose/ui/unit/FontScaling;->e0()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v1, v2}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->a(FF)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-wide v1, Landroidx/compose/foundation/text/modifiers/InlineDensity;->a:J

    .line 21
    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 25
    .line 26
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->i:J

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->i:J

    .line 32
    .line 33
    cmp-long v0, v3, v1

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 39
    .line 40
    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->i:J

    .line 41
    .line 42
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    shl-long/2addr v0, p1

    .line 46
    const-wide/16 v2, 0x1

    .line 47
    .line 48
    or-long/2addr v0, v2

    .line 49
    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->p:I

    .line 58
    .line 59
    iput p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->o:I

    .line 60
    .line 61
    return-void
.end method

.method public final e(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->m:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->m:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->g:Ljava/util/List;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    sget-object p1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 37
    .line 38
    :cond_1
    move-object v5, p1

    .line 39
    iget-boolean v8, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 40
    .line 41
    new-instance v2, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 42
    .line 43
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V

    .line 44
    .line 45
    .line 46
    move-object v0, v2

    .line 47
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 48
    .line 49
    return-object v0
.end method

.method public final f(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, v1, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Landroidx/compose/ui/text/TextLayoutResult;

    .line 18
    .line 19
    new-instance v4, Landroidx/compose/ui/text/TextLayoutInput;

    .line 20
    .line 21
    iget-object v5, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 22
    .line 23
    iget-object v6, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->k:Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    iget-object v7, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->g:Ljava/util/List;

    .line 26
    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    sget-object v7, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 30
    .line 31
    :cond_0
    iget v8, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->e:I

    .line 32
    .line 33
    iget-boolean v9, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->d:Z

    .line 34
    .line 35
    iget v10, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->c:I

    .line 36
    .line 37
    iget-object v11, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->j:Landroidx/compose/ui/unit/Density;

    .line 38
    .line 39
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v13, v0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->b:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 43
    .line 44
    move-object/from16 v12, p1

    .line 45
    .line 46
    move-wide/from16 v14, p2

    .line 47
    .line 48
    invoke-direct/range {v4 .. v15}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v2, v1, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 56
    .line 57
    invoke-static {v2}, Landroidx/compose/foundation/text/TextDelegateKt;->a(F)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    int-to-long v5, v0

    .line 62
    const/16 v0, 0x20

    .line 63
    .line 64
    shl-long/2addr v5, v0

    .line 65
    int-to-long v7, v2

    .line 66
    const-wide v9, 0xffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    and-long/2addr v7, v9

    .line 72
    or-long/2addr v5, v7

    .line 73
    invoke-static {v14, v15, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    invoke-direct {v3, v4, v1, v5, v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 78
    .line 79
    .line 80
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 2
    .line 3
    const-string v1, "null"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "<TextLayoutResult>"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    :goto_0
    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->i:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Landroidx/compose/foundation/text/modifiers/InlineDensity;->b(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->q:J

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/MultiParagraphLayoutCache;->n:Landroidx/compose/ui/text/TextLayoutResult;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    iget-wide v5, p0, Landroidx/compose/ui/text/TextLayoutInput;->j:J

    .line 28
    .line 29
    new-instance v1, Landroidx/compose/ui/unit/Constraints;

    .line 30
    .line 31
    invoke-direct {v1, v5, v6}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string p0, ", lastDensity="

    .line 35
    .line 36
    const-string v5, ", history="

    .line 37
    .line 38
    const-string v6, "MultiParagraphLayoutCache(textLayoutResult="

    .line 39
    .line 40
    invoke-static {v6, v0, p0, v2, v5}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", constraints="

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ")"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
