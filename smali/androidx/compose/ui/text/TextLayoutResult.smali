.class public final Landroidx/compose/ui/text/TextLayoutResult;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/text/TextLayoutInput;

.field public final b:Landroidx/compose/ui/text/MultiParagraph;

.field public final c:J

.field public final d:F

.field public final e:F

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 9
    .line 10
    iget-object p1, p2, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    move p3, p4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 31
    .line 32
    invoke-virtual {v0, p3}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    add-float/2addr p3, p4

    .line 37
    :goto_0
    iput p3, p0, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 51
    .line 52
    iget-object p3, p1, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 53
    .line 54
    iget-object p3, p3, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 55
    .line 56
    iget v0, p3, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    invoke-virtual {p3, v0}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    add-float/2addr p3, p4

    .line 65
    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->f:F

    .line 66
    .line 67
    add-float p4, p3, p1

    .line 68
    .line 69
    :goto_1
    iput p4, p0, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    .line 70
    .line 71
    iget-object p1, p2, Landroidx/compose/ui/text/MultiParagraph;->g:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput-object p1, p0, Landroidx/compose/ui/text/TextLayoutResult;->f:Ljava/util/ArrayList;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->l(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->a(ILjava/util/List;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    iget-object p1, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 42
    .line 43
    iget-object p1, p1, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->j:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 55
    .line 56
    return-object p0
.end method

.method public final b(I)Landroidx/compose/ui/geometry/Rect;
    .locals 8

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->k(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->a(ILjava/util/List;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    .line 25
    .line 26
    if-ltz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge p1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "offset("

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, ") is out of bounds [0,"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ")"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 84
    .line 85
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v5, 0x1

    .line 90
    const/4 v6, 0x0

    .line 91
    if-ne v1, v5, :cond_1

    .line 92
    .line 93
    move v1, v5

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v1, v6

    .line 96
    :goto_1
    invoke-virtual {v4, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    if-nez v4, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    add-int/2addr p1, v5

    .line 109
    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    .line 115
    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr p1, v5

    .line 123
    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    :goto_2
    move v7, v1

    .line 128
    move v1, p1

    .line 129
    move p1, v7

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    if-eqz v4, :cond_4

    .line 132
    .line 133
    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr p1, v5

    .line 138
    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {v0, p1, v6}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    add-int/2addr p1, v5

    .line 148
    invoke-virtual {v0, p1, v5}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    :goto_3
    new-instance v0, Landroid/graphics/RectF;

    .line 153
    .line 154
    invoke-direct {v0, v1, v2, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Landroidx/compose/ui/geometry/Rect;

    .line 158
    .line 159
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 160
    .line 161
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    add-float/2addr v2, v3

    .line 165
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 166
    .line 167
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 168
    .line 169
    add-float/2addr v0, v3

    .line 170
    invoke-direct {p1, v1, v2, v4, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0
.end method

.method public final c(I)Landroidx/compose/ui/geometry/Rect;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->l(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->a(ILjava/util/List;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 44
    .line 45
    if-ltz p1, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-gt p1, v2, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "offset("

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, ") is out of bounds [0,"

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "]"

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    new-instance v2, Landroidx/compose/ui/geometry/Rect;

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const/4 v4, 0x0

    .line 104
    add-float/2addr v3, v4

    .line 105
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-float/2addr p1, v4

    .line 110
    invoke-direct {v2, v1, v3, v1, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/ParagraphInfo;->a(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method

.method public final d(I)F
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->m(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->b(ILjava/util/List;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 19
    .line 20
    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->d:I

    .line 21
    .line 22
    sub-int/2addr p1, p0

    .line 23
    iget-object p0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->j:F

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    add-float/2addr v0, p0

    .line 42
    return v0
.end method

.method public final e(I)F
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->m(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->b(ILjava/util/List;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 19
    .line 20
    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->d:I

    .line 21
    .line 22
    sub-int/2addr p1, p0

    .line 23
    iget-object p0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    iget p0, p0, Landroidx/compose/ui/text/android/TextLayout;->k:F

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    add-float/2addr v0, p0

    .line 42
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_1
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    iget-wide v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 31
    .line 32
    iget-wide v4, p1, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 33
    .line 34
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 42
    .line 43
    iget v2, p1, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 44
    .line 45
    cmpg-float v0, v0, v2

    .line 46
    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    .line 50
    .line 51
    iget v2, p1, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    .line 52
    .line 53
    cmpg-float v0, v0, v2

    .line 54
    .line 55
    if-nez v0, :cond_6

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->f:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->f:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_6
    :goto_1
    return v1
.end method

.method public final f(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->m(I)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->b(ILjava/util/List;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 19
    .line 20
    iget v1, p0, Landroidx/compose/ui/text/ParagraphInfo;->d:I

    .line 21
    .line 22
    sub-int/2addr p1, v1

    .line 23
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget p0, p0, Landroidx/compose/ui/text/ParagraphInfo;->b:I

    .line 32
    .line 33
    add-int/2addr p1, p0

    .line 34
    return p1
.end method

.method public final g(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->l(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->a(ILjava/util/List;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    iget-object p1, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    iget-object p1, p1, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x1

    .line 54
    if-ne p0, p1, :cond_1

    .line 55
    .line 56
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->j:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_1
    sget-object p0, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 60
    .line 61
    return-object p0
.end method

.method public final h(II)Landroidx/compose/ui/graphics/AndroidPath;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    if-gt p1, p2, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gt p2, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, ") or End("

    .line 27
    .line 28
    const-string v2, ") is out of range [0.."

    .line 29
    .line 30
    const-string v3, "Start("

    .line 31
    .line 32
    invoke-static {v3, p1, v1, p2, v2}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "), or start > end!"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    if-ne p1, p2, :cond_1

    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPath;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    new-instance v3, Lw9;

    .line 69
    .line 70
    const/4 v4, 0x3

    .line 71
    invoke-direct {v3, v0, p1, p2, v4}, Lw9;-><init>(Ljava/lang/Object;III)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v1, v2, v3}, Landroidx/compose/ui/text/MultiParagraphKt;->d(Ljava/util/ArrayList;JLkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-wide v3, p0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 19
    .line 20
    invoke-static {v2, v1, v3, v4}, Ljb;->a(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    .line 31
    .line 32
    invoke-static {v2, v0, v1}, Lq;->a(FII)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->f:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v0

    .line 43
    return p0
.end method

.method public final i(I)J
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->l(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, p0}, Landroidx/compose/ui/text/MultiParagraphKt;->a(ILjava/util/List;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/compose/ui/text/ParagraphInfo;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->m()Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/selection/WordIterator;->g(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, -0x1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 59
    .line 60
    .line 61
    move v1, p1

    .line 62
    :goto_1
    if-eq v1, v2, :cond_7

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/selection/WordIterator;->g(I)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(I)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->f(I)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->d(I)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(I)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v1, p1

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(I)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    move v1, v2

    .line 123
    :cond_7
    :goto_3
    if-ne v1, v2, :cond_8

    .line 124
    .line 125
    move v1, p1

    .line 126
    :cond_8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(I)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_a

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 137
    .line 138
    .line 139
    move v3, p1

    .line 140
    :goto_4
    if-eq v3, v2, :cond_f

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;->g(I)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_9

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_9

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_9
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    goto :goto_4

    .line 160
    :cond_a
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(I)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_d

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->d(I)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_c

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->f(I)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_b

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_b
    move v3, p1

    .line 183
    goto :goto_7

    .line 184
    :cond_c
    :goto_5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    :goto_6
    move v3, v0

    .line 189
    goto :goto_7

    .line 190
    :cond_d
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->f(I)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_e

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    goto :goto_6

    .line 201
    :cond_e
    move v3, v2

    .line 202
    :cond_f
    :goto_7
    if-ne v3, v2, :cond_10

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_10
    move p1, v3

    .line 206
    :goto_8
    invoke-static {v1, p1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    const/4 p1, 0x0

    .line 211
    invoke-virtual {p0, v0, v1, p1}, Landroidx/compose/ui/text/ParagraphInfo;->b(JZ)J

    .line 212
    .line 213
    .line 214
    move-result-wide p0

    .line 215
    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->b(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "TextLayoutResult(layoutInput="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->a:Landroidx/compose/ui/text/TextLayoutInput;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", multiParagraph="

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", size="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", firstBaseline="

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", lastBaseline="

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v0, p0, Landroidx/compose/ui/text/TextLayoutResult;->e:F

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", placeholderRects="

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->f:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p0, ")"

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
