.class abstract Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    .line 11
    .line 12
    new-instance v1, Lc3;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Lu0;->d(Ljava/lang/Object;)Landroid/media/AudioDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lu0;->b(Landroid/media/AudioDescriptor;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    invoke-static {v1}, Lu0;->z(Landroid/media/AudioDescriptor;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    array-length v2, v1

    .line 58
    const/4 v4, 0x3

    .line 59
    if-eq v2, v4, :cond_2

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Invalid SAD length: "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    array-length v1, v1

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "AudioDescriptorUtil"

    .line 77
    .line 78
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x0

    .line 83
    aget-byte v1, v1, v2

    .line 84
    .line 85
    and-int/lit8 v2, v1, 0x7

    .line 86
    .line 87
    add-int/2addr v2, v3

    .line 88
    shr-int/2addr v1, v4

    .line 89
    and-int/lit8 v1, v1, 0xf

    .line 90
    .line 91
    if-ne v1, v3, :cond_1

    .line 92
    .line 93
    invoke-static {v2}, Landroidx/media3/common/util/Util;->m(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    :cond_4
    :goto_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
