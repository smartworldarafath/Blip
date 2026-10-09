.class public abstract Landroidx/media3/exoplayer/video/Av1ObuUtil;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/video/Av1ObuUtil;->a:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        -0x4bt
        0x0t
        0x3ct
        0x0t
        0x1t
        0x4t
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/media3/container/ObuParser;->b(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_7

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/media3/container/ObuParser$Obu;

    .line 24
    .line 25
    iget v2, v1, Landroidx/media3/container/ObuParser$Obu;->a:I

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/media3/container/ObuParser$Obu;->b:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    const/4 v3, 0x5

    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v2, v4

    .line 39
    :goto_1
    :try_start_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Landroidx/media3/container/ObuParser;->a(Ljava/nio/ByteBuffer;)I

    .line 47
    .line 48
    .line 49
    move-result v3
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v5, 0x4

    .line 51
    if-eq v3, v5, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-eqz p1, :cond_6

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v5, 0x6

    .line 61
    if-ge v3, v5, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :goto_2
    if-ge v4, v5, :cond_0

    .line 69
    .line 70
    add-int v6, v3, v4

    .line 71
    .line 72
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    sget-object v7, Landroidx/media3/exoplayer/video/Av1ObuUtil;->a:[B

    .line 77
    .line 78
    aget-byte v7, v7, v4

    .line 79
    .line 80
    if-eq v6, v7, :cond_5

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    :goto_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/16 v2, 0x1f

    .line 91
    .line 92
    invoke-virtual {p0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    return-void
.end method
