.class public final Landroidx/compose/ui/graphics/LinearGradient;
.super Landroidx/compose/ui/graphics/ShaderBrush;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:J


# direct methods
.method public constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/ShaderBrush;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/ui/graphics/LinearGradient;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/compose/ui/graphics/LinearGradient;->d:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-wide p1, p0, Landroidx/compose/ui/graphics/LinearGradient;->e:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(J)Landroid/graphics/Shader;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 9
    .line 10
    cmpg-float v2, v2, v3

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    shr-long v5, p1, v4

    .line 17
    .line 18
    long-to-int v2, v5

    .line 19
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    cmpg-float v5, v5, v3

    .line 33
    .line 34
    const-wide v6, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    and-long v8, p1, v6

    .line 42
    .line 43
    long-to-int v1, v8

    .line 44
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-wide v8, v0, Landroidx/compose/ui/graphics/LinearGradient;->e:J

    .line 49
    .line 50
    shr-long v10, v8, v4

    .line 51
    .line 52
    long-to-int v5, v10

    .line 53
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    cmpg-float v10, v10, v3

    .line 58
    .line 59
    if-nez v10, :cond_2

    .line 60
    .line 61
    shr-long v10, p1, v4

    .line 62
    .line 63
    long-to-int v5, v10

    .line 64
    :cond_2
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    and-long/2addr v8, v6

    .line 69
    long-to-int v8, v8

    .line 70
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    cmpg-float v3, v9, v3

    .line 75
    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    and-long v8, p1, v6

    .line 79
    .line 80
    long-to-int v3, v8

    .line 81
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    int-to-long v8, v2

    .line 95
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    int-to-long v1, v1

    .line 100
    shl-long/2addr v8, v4

    .line 101
    and-long/2addr v1, v6

    .line 102
    or-long v10, v8, v1

    .line 103
    .line 104
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-long v1, v1

    .line 109
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    int-to-long v8, v3

    .line 114
    shl-long/2addr v1, v4

    .line 115
    and-long v3, v8, v6

    .line 116
    .line 117
    or-long v12, v1, v3

    .line 118
    .line 119
    iget-object v14, v0, Landroidx/compose/ui/graphics/LinearGradient;->c:Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object v15, v0, Landroidx/compose/ui/graphics/LinearGradient;->d:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-static/range {v10 .. v15}, Landroidx/compose/ui/graphics/ShaderKt;->a(JJLjava/util/List;Ljava/util/List;)Landroid/graphics/LinearGradient;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/LinearGradient;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/LinearGradient;

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/compose/ui/graphics/LinearGradient;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/graphics/LinearGradient;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/compose/ui/graphics/LinearGradient;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    invoke-static {v1, v2, v1, v2}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget-wide v1, p0, Landroidx/compose/ui/graphics/LinearGradient;->e:J

    .line 44
    .line 45
    iget-wide p0, p1, Landroidx/compose/ui/graphics/LinearGradient;->e:J

    .line 46
    .line 47
    invoke-static {v1, v2, p0, p1}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_5

    .line 52
    .line 53
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/LinearGradient;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Landroidx/compose/ui/graphics/LinearGradient;->d:Ljava/util/ArrayList;

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
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    invoke-static {v2, v1, v3, v4}, Ljb;->a(IIJ)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-wide v2, p0, Landroidx/compose/ui/graphics/LinearGradient;->e:J

    .line 25
    .line 26
    invoke-static {v0, v1, v2, v3}, Ljb;->a(IIJ)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, p0

    .line 36
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->h(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "start="

    .line 8
    .line 9
    const-string v4, ", "

    .line 10
    .line 11
    invoke-static {v3, v2, v4}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v5, p0, Landroidx/compose/ui/graphics/LinearGradient;->e:J

    .line 16
    .line 17
    const-wide v7, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long v9, v5, v7

    .line 23
    .line 24
    xor-long/2addr v7, v9

    .line 25
    const-wide v9, 0x100000001L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    sub-long/2addr v7, v9

    .line 31
    const-wide v9, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v7, v9

    .line 37
    cmp-long v0, v7, v0

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->h(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "end="

    .line 46
    .line 47
    invoke-static {v1, v0, v4}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v0, ""

    .line 53
    .line 54
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "LinearGradient(colors="

    .line 57
    .line 58
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Landroidx/compose/ui/graphics/LinearGradient;->c:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ", stops="

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Landroidx/compose/ui/graphics/LinearGradient;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p0, "tileMode="

    .line 80
    .line 81
    const-string v3, "Clamp"

    .line 82
    .line 83
    invoke-static {v1, v2, v0, p0, v3}, Lq;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p0, ")"

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method
