.class public final synthetic Landroidx/media3/extractor/text/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic j:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

.field public final synthetic k:J

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/b;->j:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/text/b;->k:J

    .line 7
    .line 8
    iput p4, p0, Landroidx/media3/extractor/text/b;->l:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/media3/extractor/text/b;->j:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    iget-object v4, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->h:Landroidx/media3/common/Format;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v4, v1, Landroidx/media3/extractor/text/CuesWithTiming;->a:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    iget-wide v5, v1, Landroidx/media3/extractor/text/CuesWithTiming;->c:J

    .line 19
    .line 20
    new-instance v7, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    check-cast v8, Landroidx/media3/common/text/Cue;

    .line 44
    .line 45
    invoke-virtual {v8}, Landroidx/media3/common/text/Cue;->c()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v8, "c"

    .line 59
    .line 60
    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    .line 62
    .line 63
    const-string v7, "d"

    .line 64
    .line 65
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    array-length v5, v4

    .line 86
    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 87
    .line 88
    .line 89
    iget-object v5, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    .line 90
    .line 91
    array-length v6, v4

    .line 92
    invoke-interface {v5, v6, v3}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 93
    .line 94
    .line 95
    iget-wide v5, v1, Landroidx/media3/extractor/text/CuesWithTiming;->b:J

    .line 96
    .line 97
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    cmp-long v1, v5, v7

    .line 103
    .line 104
    iget-object v3, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->h:Landroidx/media3/common/Format;

    .line 105
    .line 106
    iget-wide v7, v0, Landroidx/media3/extractor/text/b;->k:J

    .line 107
    .line 108
    const/4 v9, 0x1

    .line 109
    const-wide v10, 0x7fffffffffffffffL

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    .line 116
    iget-wide v5, v3, Landroidx/media3/common/Format;->u:J

    .line 117
    .line 118
    cmp-long v1, v5, v10

    .line 119
    .line 120
    if-nez v1, :cond_1

    .line 121
    .line 122
    move v1, v9

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const/4 v1, 0x0

    .line 125
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 126
    .line 127
    .line 128
    :goto_2
    move-wide v11, v7

    .line 129
    goto :goto_3

    .line 130
    :cond_2
    iget-wide v12, v3, Landroidx/media3/common/Format;->u:J

    .line 131
    .line 132
    cmp-long v1, v12, v10

    .line 133
    .line 134
    if-nez v1, :cond_3

    .line 135
    .line 136
    add-long/2addr v7, v5

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    add-long v7, v5, v12

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_3
    iget-object v10, v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->a:Landroidx/media3/extractor/TrackOutput;

    .line 142
    .line 143
    iget v0, v0, Landroidx/media3/extractor/text/b;->l:I

    .line 144
    .line 145
    or-int/lit8 v13, v0, 0x1

    .line 146
    .line 147
    array-length v14, v4

    .line 148
    const/4 v15, 0x0

    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
