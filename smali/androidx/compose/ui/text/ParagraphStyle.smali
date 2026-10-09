.class public final Landroidx/compose/ui/text/ParagraphStyle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/AnnotatedString$Annotation;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Landroidx/compose/ui/text/style/TextIndent;

.field public final e:Landroidx/compose/ui/text/PlatformParagraphStyle;

.field public final f:Landroidx/compose/ui/text/style/LineHeightStyle;

.field public final g:I

.field public final h:I

.field public final i:Landroidx/compose/ui/text/style/TextMotion;


# direct methods
.method public constructor <init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 15
    .line 16
    iput p8, p0, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 17
    .line 18
    iput p9, p0, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 19
    .line 20
    iput-object p10, p0, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 21
    .line 22
    sget-wide p0, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 23
    .line 24
    invoke-static {p3, p4, p0, p1}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 p1, 0x0

    .line 35
    cmpl-float p0, p0, p1

    .line 36
    .line 37
    if-ltz p0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p2, "lineHeight can\'t be negative ("

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ")"

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 5
    .line 6
    iget v2, p1, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 7
    .line 8
    iget-wide v3, p1, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 9
    .line 10
    iget-object v5, p1, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 11
    .line 12
    iget-object v6, p1, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 13
    .line 14
    iget-object v7, p1, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 15
    .line 16
    iget v8, p1, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 17
    .line 18
    iget v9, p1, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 19
    .line 20
    iget-object v10, p1, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/ParagraphStyleKt;->a(Landroidx/compose/ui/text/ParagraphStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 10
    .line 11
    iget v0, p1, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 14
    .line 15
    if-ne v1, v0, :cond_7

    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 18
    .line 19
    iget v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_7

    .line 22
    .line 23
    iget-wide v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 24
    .line 25
    iget-wide v2, p1, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 35
    .line 36
    iget-object v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 46
    .line 47
    iget-object v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 57
    .line 58
    iget-object v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    iget v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 68
    .line 69
    iget v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 70
    .line 71
    if-ne v0, v1, :cond_7

    .line 72
    .line 73
    iget v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 74
    .line 75
    iget v1, p1, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 76
    .line 77
    if-ne v0, v1, :cond_7

    .line 78
    .line 79
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 80
    .line 81
    iget-object p1, p1, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 82
    .line 83
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    :goto_0
    const/4 p0, 0x1

    .line 91
    return p0

    .line 92
    :cond_7
    :goto_1
    const/4 p0, 0x0

    .line 93
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v2, p0, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lq;->b(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v2, Landroidx/compose/ui/unit/TextUnit;->b:[Landroidx/compose/ui/unit/TextUnitType;

    .line 17
    .line 18
    iget-wide v2, p0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    iget-object v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextIndent;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v2

    .line 35
    :goto_0
    add-int/2addr v0, v3

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget-object v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/ui/text/PlatformParagraphStyle;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v3, v2

    .line 47
    :goto_1
    add-int/2addr v0, v3

    .line 48
    mul-int/2addr v0, v1

    .line 49
    iget-object v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3}, Landroidx/compose/ui/text/style/LineHeightStyle;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v3, v2

    .line 59
    :goto_2
    add-int/2addr v0, v3

    .line 60
    mul-int/2addr v0, v1

    .line 61
    iget v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 62
    .line 63
    invoke-static {v3, v0, v1}, Lq;->b(III)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 68
    .line 69
    invoke-static {v3, v0, v1}, Lq;->b(III)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextMotion;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :cond_3
    add-int/2addr v0, v2

    .line 82
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/text/style/TextAlign;->a(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 8
    .line 9
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextDirection;->a(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->d(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 20
    .line 21
    invoke-static {v3}, Landroidx/compose/ui/text/style/LineBreak;->a(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p0, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 26
    .line 27
    invoke-static {v4}, Landroidx/compose/ui/text/style/Hyphens;->a(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, ", textDirection="

    .line 32
    .line 33
    const-string v6, ", lineHeight="

    .line 34
    .line 35
    const-string v7, "ParagraphStyle(textAlign="

    .line 36
    .line 37
    invoke-static {v7, v0, v5, v1, v6}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", textIndent="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", platformStyle="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", lineHeightStyle="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", lineBreak="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", hyphens="

    .line 80
    .line 81
    const-string v2, ", textMotion="

    .line 82
    .line 83
    invoke-static {v0, v3, v1, v4, v2}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, ")"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
