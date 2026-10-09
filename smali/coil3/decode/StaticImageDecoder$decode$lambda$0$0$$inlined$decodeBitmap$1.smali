.class public final Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic a:Lcoil3/decode/StaticImageDecoder;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcoil3/decode/StaticImageDecoder;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->a:Lcoil3/decode/StaticImageDecoder;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p2, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->a:Lcoil3/decode/StaticImageDecoder;

    .line 14
    .line 15
    iget-object p3, p2, Lcoil3/decode/StaticImageDecoder;->c:Lcoil3/request/Options;

    .line 16
    .line 17
    iget-object v2, p3, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    .line 18
    .line 19
    iget-object v3, p3, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 20
    .line 21
    sget-object v4, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 22
    .line 23
    invoke-static {p3, v4}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcoil3/size/Size;

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, v5}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    shr-long v5, v2, v5

    .line 36
    .line 37
    long-to-int v5, v5

    .line 38
    const-wide v6, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v2, v6

    .line 44
    long-to-int v3, v2

    .line 45
    const/4 v6, 0x1

    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    if-lez v1, :cond_3

    .line 49
    .line 50
    if-ne v0, v5, :cond_0

    .line 51
    .line 52
    if-eq v1, v3, :cond_3

    .line 53
    .line 54
    :cond_0
    move-object v2, v4

    .line 55
    iget-object v4, p3, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    .line 56
    .line 57
    invoke-static {p3, v2}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcoil3/size/Size;

    .line 62
    .line 63
    move v8, v5

    .line 64
    move-object v5, v2

    .line 65
    move v2, v8

    .line 66
    invoke-static/range {v0 .. v5}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 71
    .line 72
    cmpg-double v4, v2, v4

    .line 73
    .line 74
    if-gez v4, :cond_1

    .line 75
    .line 76
    move v4, v6

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v4, 0x0

    .line 79
    :goto_0
    iget-object p0, p0, Lcoil3/decode/StaticImageDecoder$decode$lambda$0$0$$inlined$decodeBitmap$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 80
    .line 81
    iput-boolean v4, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 82
    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    iget-object p0, p3, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    .line 86
    .line 87
    sget-object v4, Lcoil3/size/Precision;->j:Lcoil3/size/Precision;

    .line 88
    .line 89
    if-ne p0, v4, :cond_3

    .line 90
    .line 91
    :cond_2
    int-to-double v4, v0

    .line 92
    mul-double/2addr v4, v2

    .line 93
    invoke-static {v4, v5}, Lkotlin/math/MathKt;->a(D)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    int-to-double v0, v1

    .line 98
    mul-double/2addr v2, v0

    .line 99
    invoke-static {v2, v3}, Lkotlin/math/MathKt;->a(D)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 104
    .line 105
    .line 106
    :cond_3
    new-instance p0, Lbg;

    .line 107
    .line 108
    invoke-direct {p0, p2}, Lbg;-><init>(Lcoil3/decode/StaticImageDecoder;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p3}, Lcoil3/request/ImageRequests_androidKt;->a(Lcoil3/request/Options;)Landroid/graphics/Bitmap$Config;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 119
    .line 120
    if-ne p0, p2, :cond_4

    .line 121
    .line 122
    const/4 p0, 0x3

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move p0, v6

    .line 125
    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 126
    .line 127
    .line 128
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->h:Lcoil3/Extras$Key;

    .line 129
    .line 130
    invoke-static {p3, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    xor-int/2addr p0, v6

    .line 141
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    .line 142
    .line 143
    .line 144
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->c:Lcoil3/Extras$Key;

    .line 145
    .line 146
    invoke-static {p3, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Landroid/graphics/ColorSpace;

    .line 151
    .line 152
    if-eqz p2, :cond_5

    .line 153
    .line 154
    invoke-static {p3, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Landroid/graphics/ColorSpace;

    .line 159
    .line 160
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    sget-object p0, Lcoil3/request/ImageRequests_androidKt;->d:Lcoil3/Extras$Key;

    .line 164
    .line 165
    invoke-static {p3, p0}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    xor-int/2addr p0, v6

    .line 176
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
