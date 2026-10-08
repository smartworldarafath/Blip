.class public final Landroidx/media3/exoplayer/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;
    }
.end annotation


# static fields
.field public static final e:Lcom/google/common/collect/ImmutableList;

.field public static final f:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field public static final g:Lcom/google/common/collect/ImmutableList;

.field public static final h:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I

.field public final c:Lcom/google/common/collect/ImmutableList;

.field public final d:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 18
    .line 19
    sget-object v3, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v2, v3, v0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    sput-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->f:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v3, 0x3

    .line 50
    invoke-static {v3, v0}, Lcom/google/common/collect/ObjectArrays;->a(I[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableList;->j(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->g:Lcom/google/common/collect/ImmutableList;

    .line 58
    .line 59
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    invoke-direct {v0, v3}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x11

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x7

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/16 v1, 0x1e

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/16 v3, 0xa

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const/16 v1, 0x12

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const/16 v2, 0xe

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->h:Lcom/google/common/collect/ImmutableMap;

    .line 136
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 26
    .line 27
    iget v4, v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->a:I

    .line 28
    .line 29
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v0

    .line 36
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ge v0, v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 51
    .line 52
    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->b:I

    .line 53
    .line 54
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b:I

    .line 62
    .line 63
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c:Lcom/google/common/collect/ImmutableList;

    .line 68
    .line 69
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d:Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    return-void
.end method

.method public static a([II)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [I

    .line 9
    .line 10
    :cond_0
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget v2, p0, v1

    .line 14
    .line 15
    new-instance v3, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 16
    .line 17
    invoke-direct {v3, v2, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Landroid/media/AudioDeviceInfo;Ljava/util/List;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/16 v5, 0x21

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    move-object/from16 v7, p3

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    if-lt v7, v5, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-static {v4, v7}, Ll;->r(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-eqz v9, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    check-cast v7, Landroid/media/AudioDeviceInfo;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    move-object v7, v8

    .line 50
    :goto_1
    const/16 v8, 0x1d

    .line 51
    .line 52
    const/16 v9, 0xc

    .line 53
    .line 54
    const/16 v10, 0xa

    .line 55
    .line 56
    const/4 v11, 0x1

    .line 57
    if-eqz v7, :cond_29

    .line 58
    .line 59
    sget-object v12, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a:Lcom/google/common/collect/ImmutableList;

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    invoke-static {v13}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->a(I)Z

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-eqz v13, :cond_4

    .line 70
    .line 71
    :cond_3
    :goto_2
    move/from16 v18, v6

    .line 72
    .line 73
    goto/16 :goto_e

    .line 74
    .line 75
    :cond_4
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    if-ne v13, v11, :cond_5

    .line 80
    .line 81
    const/4 v12, 0x4

    .line 82
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-ne v13, v2, :cond_7

    .line 96
    .line 97
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    const/16 v14, 0x24

    .line 100
    .line 101
    if-lt v13, v14, :cond_6

    .line 102
    .line 103
    invoke-static {v7}, Lt4;->b(Landroid/media/AudioDeviceInfo;)I

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_6

    .line 108
    .line 109
    if-eq v13, v11, :cond_6

    .line 110
    .line 111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    const-string v13, "SpeakerLayoutUtil"

    .line 121
    .line 122
    const-string v14, "Built-in speaker\'s getSpeakerLayoutChannelMask not usable, defaulting to stereo."

    .line 123
    .line 124
    invoke-static {v13, v14}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .line 130
    const/16 v14, 0x1f

    .line 131
    .line 132
    if-lt v13, v14, :cond_9

    .line 133
    .line 134
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-ne v15, v10, :cond_9

    .line 139
    .line 140
    invoke-static {v7}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-nez v14, :cond_8

    .line 149
    .line 150
    :goto_3
    move/from16 v18, v6

    .line 151
    .line 152
    move-object v12, v13

    .line 153
    goto/16 :goto_e

    .line 154
    .line 155
    :cond_8
    invoke-static {v7}, Ldb;->z(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-static {v13}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-nez v14, :cond_3

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    if-lt v13, v14, :cond_26

    .line 171
    .line 172
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 173
    .line 174
    .line 175
    move-result v15

    .line 176
    if-lt v13, v14, :cond_26

    .line 177
    .line 178
    if-ne v15, v8, :cond_26

    .line 179
    .line 180
    invoke-static {v7}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    if-nez v15, :cond_a

    .line 189
    .line 190
    move/from16 v18, v6

    .line 191
    .line 192
    move-object v12, v14

    .line 193
    goto/16 :goto_e

    .line 194
    .line 195
    :cond_a
    invoke-static {v7}, Ldb;->z(Landroid/media/AudioDeviceInfo;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    const/16 v15, 0x22

    .line 200
    .line 201
    if-lt v13, v15, :cond_24

    .line 202
    .line 203
    if-lt v13, v15, :cond_b

    .line 204
    .line 205
    if-nez v14, :cond_c

    .line 206
    .line 207
    :cond_b
    move/from16 v18, v6

    .line 208
    .line 209
    goto/16 :goto_a

    .line 210
    .line 211
    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v16

    .line 220
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v17

    .line 224
    if-eqz v17, :cond_23

    .line 225
    .line 226
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v17

    .line 230
    invoke-static/range {v17 .. v17}, Lu0;->d(Ljava/lang/Object;)Landroid/media/AudioDescriptor;

    .line 231
    .line 232
    .line 233
    move-result-object v17

    .line 234
    move/from16 v18, v6

    .line 235
    .line 236
    invoke-static/range {v17 .. v17}, Lu0;->b(Landroid/media/AudioDescriptor;)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-ne v6, v2, :cond_d

    .line 241
    .line 242
    invoke-static/range {v17 .. v17}, Lu0;->z(Landroid/media/AudioDescriptor;)[B

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    array-length v10, v6

    .line 247
    const/4 v8, 0x3

    .line 248
    if-eq v10, v8, :cond_e

    .line 249
    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v10, "Invalid SADB length: "

    .line 253
    .line 254
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    array-length v6, v6

    .line 258
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    const-string v8, "AudioDescriptorUtil"

    .line 266
    .line 267
    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_d
    :goto_5
    move/from16 v6, v18

    .line 271
    .line 272
    const/16 v8, 0x1d

    .line 273
    .line 274
    const/16 v10, 0xa

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_e
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 278
    .line 279
    if-lt v10, v15, :cond_22

    .line 280
    .line 281
    array-length v10, v6

    .line 282
    if-eq v10, v8, :cond_f

    .line 283
    .line 284
    goto/16 :goto_8

    .line 285
    .line 286
    :cond_f
    aget-byte v8, v6, v18

    .line 287
    .line 288
    and-int/lit8 v10, v8, 0x1

    .line 289
    .line 290
    if-eqz v10, :cond_10

    .line 291
    .line 292
    move v10, v9

    .line 293
    goto :goto_6

    .line 294
    :cond_10
    move/from16 v10, v18

    .line 295
    .line 296
    :goto_6
    and-int/lit8 v19, v8, 0x2

    .line 297
    .line 298
    if-eqz v19, :cond_11

    .line 299
    .line 300
    or-int/lit8 v10, v10, 0x20

    .line 301
    .line 302
    :cond_11
    and-int/lit8 v19, v8, 0x4

    .line 303
    .line 304
    if-eqz v19, :cond_12

    .line 305
    .line 306
    or-int/lit8 v10, v10, 0x10

    .line 307
    .line 308
    :cond_12
    and-int/lit8 v19, v8, 0x8

    .line 309
    .line 310
    if-eqz v19, :cond_13

    .line 311
    .line 312
    or-int/lit16 v10, v10, 0xc0

    .line 313
    .line 314
    :cond_13
    and-int/lit8 v19, v8, 0x10

    .line 315
    .line 316
    if-eqz v19, :cond_14

    .line 317
    .line 318
    or-int/lit16 v10, v10, 0x400

    .line 319
    .line 320
    :cond_14
    and-int/lit8 v19, v8, 0x20

    .line 321
    .line 322
    if-eqz v19, :cond_15

    .line 323
    .line 324
    or-int/lit16 v10, v10, 0x300

    .line 325
    .line 326
    :cond_15
    and-int/lit16 v8, v8, 0x80

    .line 327
    .line 328
    if-eqz v8, :cond_16

    .line 329
    .line 330
    const/high16 v8, 0xc000000

    .line 331
    .line 332
    or-int/2addr v10, v8

    .line 333
    :cond_16
    aget-byte v8, v6, v11

    .line 334
    .line 335
    and-int/lit8 v19, v8, 0x1

    .line 336
    .line 337
    if-eqz v19, :cond_17

    .line 338
    .line 339
    const v19, 0x14000

    .line 340
    .line 341
    .line 342
    or-int v10, v10, v19

    .line 343
    .line 344
    :cond_17
    and-int/lit8 v19, v8, 0x2

    .line 345
    .line 346
    if-eqz v19, :cond_18

    .line 347
    .line 348
    or-int/lit16 v10, v10, 0x2000

    .line 349
    .line 350
    :cond_18
    and-int/lit8 v19, v8, 0x4

    .line 351
    .line 352
    if-eqz v19, :cond_19

    .line 353
    .line 354
    const v19, 0x8000

    .line 355
    .line 356
    .line 357
    or-int v10, v10, v19

    .line 358
    .line 359
    :cond_19
    and-int/lit8 v19, v8, 0x8

    .line 360
    .line 361
    if-eqz v19, :cond_1a

    .line 362
    .line 363
    or-int/lit16 v10, v10, 0x1800

    .line 364
    .line 365
    :cond_1a
    and-int/lit8 v19, v8, 0x10

    .line 366
    .line 367
    if-eqz v19, :cond_1b

    .line 368
    .line 369
    const/high16 v19, 0x2000000

    .line 370
    .line 371
    or-int v10, v10, v19

    .line 372
    .line 373
    :cond_1b
    and-int/lit8 v19, v8, 0x20

    .line 374
    .line 375
    if-eqz v19, :cond_1c

    .line 376
    .line 377
    const/high16 v19, 0x40000

    .line 378
    .line 379
    or-int v10, v10, v19

    .line 380
    .line 381
    :cond_1c
    and-int/lit8 v19, v8, 0x40

    .line 382
    .line 383
    if-eqz v19, :cond_1d

    .line 384
    .line 385
    or-int/lit16 v10, v10, 0x1800

    .line 386
    .line 387
    :cond_1d
    and-int/lit16 v8, v8, 0x80

    .line 388
    .line 389
    if-eqz v8, :cond_1e

    .line 390
    .line 391
    const/high16 v8, 0x300000

    .line 392
    .line 393
    or-int/2addr v10, v8

    .line 394
    :cond_1e
    aget-byte v6, v6, v2

    .line 395
    .line 396
    and-int/lit8 v8, v6, 0x1

    .line 397
    .line 398
    if-eqz v8, :cond_1f

    .line 399
    .line 400
    const/high16 v8, 0xa0000

    .line 401
    .line 402
    or-int/2addr v10, v8

    .line 403
    :cond_1f
    and-int/lit8 v8, v6, 0x2

    .line 404
    .line 405
    if-eqz v8, :cond_20

    .line 406
    .line 407
    const/high16 v8, 0x800000

    .line 408
    .line 409
    or-int/2addr v8, v10

    .line 410
    goto :goto_7

    .line 411
    :cond_20
    move v8, v10

    .line 412
    :goto_7
    and-int/lit8 v6, v6, 0x4

    .line 413
    .line 414
    if-eqz v6, :cond_21

    .line 415
    .line 416
    const/high16 v6, 0x1400000

    .line 417
    .line 418
    or-int/2addr v6, v8

    .line 419
    goto :goto_9

    .line 420
    :cond_21
    move v6, v8

    .line 421
    goto :goto_9

    .line 422
    :cond_22
    :goto_8
    move/from16 v6, v18

    .line 423
    .line 424
    :goto_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :cond_23
    move/from16 v18, v6

    .line 434
    .line 435
    new-instance v6, Lv1;

    .line 436
    .line 437
    invoke-direct {v6, v11}, Lv1;-><init>(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 441
    .line 442
    .line 443
    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    goto :goto_b

    .line 448
    :goto_a
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    :goto_b
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    if-nez v8, :cond_25

    .line 457
    .line 458
    :goto_c
    move-object v12, v6

    .line 459
    goto :goto_e

    .line 460
    :cond_24
    move/from16 v18, v6

    .line 461
    .line 462
    :cond_25
    invoke-static {v14}, Landroidx/media3/exoplayer/audio/AudioDescriptorUtil;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    if-nez v8, :cond_2a

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_26
    move/from16 v18, v6

    .line 474
    .line 475
    if-lt v13, v14, :cond_2a

    .line 476
    .line 477
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    const/16 v8, 0xb

    .line 482
    .line 483
    if-eq v6, v8, :cond_28

    .line 484
    .line 485
    if-ne v6, v9, :cond_27

    .line 486
    .line 487
    goto :goto_d

    .line 488
    :cond_27
    if-lt v13, v14, :cond_2a

    .line 489
    .line 490
    const/16 v8, 0x16

    .line 491
    .line 492
    if-ne v6, v8, :cond_2a

    .line 493
    .line 494
    :cond_28
    :goto_d
    invoke-static {v7}, Landroidx/media3/exoplayer/audio/SpeakerLayoutUtil;->a(Landroid/media/AudioDeviceInfo;)Lcom/google/common/collect/ImmutableList;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    if-nez v8, :cond_2a

    .line 503
    .line 504
    goto :goto_c

    .line 505
    :cond_29
    move/from16 v18, v6

    .line 506
    .line 507
    sget-object v12, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e:Lcom/google/common/collect/ImmutableList;

    .line 508
    .line 509
    :cond_2a
    :goto_e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 510
    .line 511
    sget-object v8, Landroidx/media3/exoplayer/audio/AudioCapabilities;->h:Lcom/google/common/collect/ImmutableMap;

    .line 512
    .line 513
    const-string v10, "android.hardware.type.automotive"

    .line 514
    .line 515
    if-lt v6, v5, :cond_31

    .line 516
    .line 517
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/util/Util;->C(Landroid/content/Context;)Z

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    if-nez v5, :cond_2b

    .line 522
    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    if-eqz v5, :cond_31

    .line 532
    .line 533
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v4, v0}, Ll;->C(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    new-instance v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 542
    .line 543
    new-instance v4, Ljava/util/HashMap;

    .line 544
    .line 545
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 546
    .line 547
    .line 548
    new-instance v5, Ljava/util/HashSet;

    .line 549
    .line 550
    filled-new-array {v9}, [I

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    invoke-static {v6}, Lcom/google/common/primitives/Ints;->a([I)Ljava/util/List;

    .line 555
    .line 556
    .line 557
    move-result-object v6

    .line 558
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move/from16 v6, v18

    .line 565
    .line 566
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    if-ge v6, v3, :cond_2f

    .line 571
    .line 572
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-static {v3}, Lu0;->e(Ljava/lang/Object;)Landroid/media/AudioProfile;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    invoke-static {v3}, Lu0;->c(Landroid/media/AudioProfile;)I

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-ne v5, v11, :cond_2c

    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_2c
    invoke-static {v3}, Lu0;->B(Landroid/media/AudioProfile;)I

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    invoke-static {v5}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    if-nez v7, :cond_2d

    .line 596
    .line 597
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-virtual {v8, v7}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v7

    .line 605
    if-nez v7, :cond_2d

    .line 606
    .line 607
    goto :goto_10

    .line 608
    :cond_2d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    if-eqz v7, :cond_2e

    .line 617
    .line 618
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v5

    .line 626
    check-cast v5, Ljava/util/Set;

    .line 627
    .line 628
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    check-cast v5, Ljava/util/Set;

    .line 632
    .line 633
    invoke-static {v3}, Lu0;->A(Landroid/media/AudioProfile;)[I

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->a([I)Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 642
    .line 643
    .line 644
    goto :goto_10

    .line 645
    :cond_2e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    new-instance v7, Ljava/util/HashSet;

    .line 650
    .line 651
    invoke-static {v3}, Lu0;->A(Landroid/media/AudioProfile;)[I

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->a([I)Ljava/util/List;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 666
    .line 667
    goto :goto_f

    .line 668
    :cond_2f
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 677
    .line 678
    .line 679
    move-result-object v3

    .line 680
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    if-eqz v4, :cond_30

    .line 685
    .line 686
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    check-cast v4, Ljava/util/Map$Entry;

    .line 691
    .line 692
    new-instance v5, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 693
    .line 694
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    check-cast v6, Ljava/lang/Integer;

    .line 699
    .line 700
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v6

    .line 704
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    check-cast v4, Ljava/util/Set;

    .line 709
    .line 710
    invoke-direct {v5, v6, v4}, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;-><init>(ILjava/util/Set;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    goto :goto_11

    .line 717
    :cond_30
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    invoke-direct {v2, v0, v12, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V

    .line 722
    .line 723
    .line 724
    return-object v2

    .line 725
    :cond_31
    if-nez v7, :cond_32

    .line 726
    .line 727
    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    goto :goto_12

    .line 732
    :cond_32
    new-array v2, v11, [Landroid/media/AudioDeviceInfo;

    .line 733
    .line 734
    aput-object v7, v2, v18

    .line 735
    .line 736
    :goto_12
    array-length v4, v2

    .line 737
    move/from16 v5, v18

    .line 738
    .line 739
    :goto_13
    if-ge v5, v4, :cond_34

    .line 740
    .line 741
    aget-object v6, v2, v5

    .line 742
    .line 743
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 744
    .line 745
    .line 746
    move-result v6

    .line 747
    invoke-static {v6}, Landroidx/media3/exoplayer/audio/DeviceTypeUtil;->a(I)Z

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    if-eqz v6, :cond_33

    .line 752
    .line 753
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 754
    .line 755
    sget-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->d:Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 756
    .line 757
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    invoke-direct {v0, v2, v12, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V

    .line 762
    .line 763
    .line 764
    return-object v0

    .line 765
    :cond_33
    add-int/lit8 v5, v5, 0x1

    .line 766
    .line 767
    goto :goto_13

    .line 768
    :cond_34
    new-instance v2, Lcom/google/common/collect/ImmutableSet$Builder;

    .line 769
    .line 770
    invoke-direct {v2}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    .line 774
    .line 775
    .line 776
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 777
    .line 778
    const/16 v5, 0x1d

    .line 779
    .line 780
    if-lt v4, v5, :cond_39

    .line 781
    .line 782
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/util/Util;->C(Landroid/content/Context;)Z

    .line 783
    .line 784
    .line 785
    move-result v4

    .line 786
    if-nez v4, :cond_35

    .line 787
    .line 788
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 789
    .line 790
    .line 791
    move-result-object v4

    .line 792
    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    if-eqz v4, :cond_39

    .line 797
    .line 798
    :cond_35
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableMap;->c()Lcom/google/common/collect/ImmutableSet;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableCollection;->i()Lcom/google/common/collect/UnmodifiableIterator;

    .line 807
    .line 808
    .line 809
    move-result-object v4

    .line 810
    :cond_36
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 811
    .line 812
    .line 813
    move-result v5

    .line 814
    if-eqz v5, :cond_38

    .line 815
    .line 816
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v5

    .line 820
    check-cast v5, Ljava/lang/Integer;

    .line 821
    .line 822
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 823
    .line 824
    .line 825
    move-result v6

    .line 826
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 827
    .line 828
    invoke-static {v6}, Landroidx/media3/common/util/Util;->l(I)I

    .line 829
    .line 830
    .line 831
    move-result v8

    .line 832
    if-ge v7, v8, :cond_37

    .line 833
    .line 834
    goto :goto_14

    .line 835
    :cond_37
    new-instance v7, Landroid/media/AudioFormat$Builder;

    .line 836
    .line 837
    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v7, v9}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 841
    .line 842
    .line 843
    move-result-object v7

    .line 844
    invoke-virtual {v7, v6}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 845
    .line 846
    .line 847
    move-result-object v6

    .line 848
    const v7, 0xbb80

    .line 849
    .line 850
    .line 851
    invoke-virtual {v6, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 852
    .line 853
    .line 854
    move-result-object v6

    .line 855
    invoke-virtual {v6}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 856
    .line 857
    .line 858
    move-result-object v6

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 860
    .line 861
    .line 862
    move-result-object v7

    .line 863
    invoke-static {v6, v7}, Ll0;->v(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 864
    .line 865
    .line 866
    move-result v6

    .line 867
    if-eqz v6, :cond_36

    .line 868
    .line 869
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    goto :goto_14

    .line 873
    :cond_38
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/util/List;)V

    .line 881
    .line 882
    .line 883
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 884
    .line 885
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->j()Lcom/google/common/collect/ImmutableSet;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->e(Ljava/util/AbstractCollection;)[I

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    const/16 v3, 0xa

    .line 894
    .line 895
    invoke-static {v2, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a([II)Lcom/google/common/collect/ImmutableList;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    invoke-direct {v0, v2, v12, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V

    .line 900
    .line 901
    .line 902
    return-object v0

    .line 903
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    const-string v4, "use_external_surround_sound_flag"

    .line 908
    .line 909
    move/from16 v5, v18

    .line 910
    .line 911
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 912
    .line 913
    .line 914
    move-result v4

    .line 915
    if-ne v4, v11, :cond_3a

    .line 916
    .line 917
    move v5, v11

    .line 918
    goto :goto_15

    .line 919
    :cond_3a
    const/4 v5, 0x0

    .line 920
    :goto_15
    if-nez v5, :cond_3c

    .line 921
    .line 922
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 923
    .line 924
    const-string v6, "Amazon"

    .line 925
    .line 926
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 927
    .line 928
    .line 929
    move-result v6

    .line 930
    if-nez v6, :cond_3c

    .line 931
    .line 932
    const-string v6, "Xiaomi"

    .line 933
    .line 934
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v4

    .line 938
    if-eqz v4, :cond_3b

    .line 939
    .line 940
    goto :goto_16

    .line 941
    :cond_3b
    const/4 v6, 0x0

    .line 942
    goto :goto_17

    .line 943
    :cond_3c
    :goto_16
    const-string v4, "external_surround_sound_enabled"

    .line 944
    .line 945
    const/4 v6, 0x0

    .line 946
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    if-ne v3, v11, :cond_3d

    .line 951
    .line 952
    sget-object v3, Landroidx/media3/exoplayer/audio/AudioCapabilities;->g:Lcom/google/common/collect/ImmutableList;

    .line 953
    .line 954
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/util/List;)V

    .line 955
    .line 956
    .line 957
    :cond_3d
    :goto_17
    if-eqz v0, :cond_3f

    .line 958
    .line 959
    if-nez v5, :cond_3f

    .line 960
    .line 961
    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    .line 962
    .line 963
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    if-ne v3, v11, :cond_3f

    .line 968
    .line 969
    const-string v3, "android.media.extra.ENCODINGS"

    .line 970
    .line 971
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    if-eqz v3, :cond_3e

    .line 976
    .line 977
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->a([I)Ljava/util/List;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/util/List;)V

    .line 982
    .line 983
    .line 984
    :cond_3e
    new-instance v3, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 985
    .line 986
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->j()Lcom/google/common/collect/ImmutableSet;

    .line 987
    .line 988
    .line 989
    move-result-object v2

    .line 990
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->e(Ljava/util/AbstractCollection;)[I

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    const-string v4, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 995
    .line 996
    const/16 v5, 0xa

    .line 997
    .line 998
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    invoke-static {v2, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a([II)Lcom/google/common/collect/ImmutableList;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    invoke-direct {v3, v0, v12, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V

    .line 1007
    .line 1008
    .line 1009
    return-object v3

    .line 1010
    :cond_3f
    const/16 v5, 0xa

    .line 1011
    .line 1012
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 1013
    .line 1014
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->j()Lcom/google/common/collect/ImmutableSet;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v2

    .line 1018
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->e(Ljava/util/AbstractCollection;)[I

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    invoke-static {v2, v5}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a([II)Lcom/google/common/collect/ImmutableList;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v2

    .line 1026
    invoke-direct {v0, v2, v12, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>(Ljava/util/List;Lcom/google/common/collect/ImmutableList;Ljava/util/List;)V

    .line 1027
    .line 1028
    .line 1029
    return-object v0
.end method


# virtual methods
.method public final c(Landroidx/media3/common/Format;Landroidx/media3/common/AudioAttributes;)Landroid/util/Pair;
    .locals 13

    .line 1
    iget-object v0, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/common/Format;->K:I

    .line 4
    .line 5
    iget v2, p1, Landroidx/media3/common/Format;->J:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, p1, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v3}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Landroidx/media3/exoplayer/audio/AudioCapabilities;->h:Lcom/google/common/collect/ImmutableMap;

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_0
    const/4 v3, 0x7

    .line 31
    const/4 v5, 0x6

    .line 32
    const/16 v6, 0x8

    .line 33
    .line 34
    const/16 v7, 0x12

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 37
    .line 38
    if-ne v0, v7, :cond_1

    .line 39
    .line 40
    invoke-static {p0, v7}, Landroidx/media3/common/util/Util;->i(Landroid/util/SparseArray;I)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    move v0, v5

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-ne v0, v6, :cond_2

    .line 49
    .line 50
    invoke-static {p0, v6}, Landroidx/media3/common/util/Util;->i(Landroid/util/SparseArray;I)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_3

    .line 55
    .line 56
    :cond_2
    const/16 v8, 0x1e

    .line 57
    .line 58
    if-ne v0, v8, :cond_4

    .line 59
    .line 60
    invoke-static {p0, v8}, Landroidx/media3/common/util/Util;->i(Landroid/util/SparseArray;I)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_4

    .line 65
    .line 66
    :cond_3
    move v0, v3

    .line 67
    :cond_4
    :goto_0
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->i(Landroid/util/SparseArray;I)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_5

    .line 72
    .line 73
    goto/16 :goto_a

    .line 74
    .line 75
    :cond_5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget v8, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->b:I

    .line 85
    .line 86
    iget-object v9, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->c:Lcom/google/common/collect/ImmutableSet;

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/16 v11, 0xa

    .line 90
    .line 91
    const/4 v12, -0x1

    .line 92
    if-eq v2, v12, :cond_d

    .line 93
    .line 94
    if-ne v0, v7, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    iget-object p0, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 98
    .line 99
    const-string p1, "audio/vnd.dts.uhd;profile=p2"

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_7

    .line 106
    .line 107
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 108
    .line 109
    const/16 p1, 0x21

    .line 110
    .line 111
    if-ge p0, p1, :cond_7

    .line 112
    .line 113
    if-le v2, v11, :cond_c

    .line 114
    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :cond_7
    if-nez v9, :cond_8

    .line 118
    .line 119
    if-gt v2, v8, :cond_b

    .line 120
    .line 121
    const/4 v10, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_8
    if-eq v1, v12, :cond_9

    .line 124
    .line 125
    move p0, v1

    .line 126
    goto :goto_1

    .line 127
    :cond_9
    invoke-static {v2}, Landroidx/media3/common/util/Util;->m(I)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    :goto_1
    if-nez p0, :cond_a

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v9, p0}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    :cond_b
    :goto_2
    if-nez v10, :cond_c

    .line 143
    .line 144
    goto/16 :goto_a

    .line 145
    .line 146
    :cond_c
    move v8, v2

    .line 147
    goto :goto_7

    .line 148
    :cond_d
    :goto_3
    iget p1, p1, Landroidx/media3/common/Format;->L:I

    .line 149
    .line 150
    if-eq p1, v12, :cond_e

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_e
    const p1, 0xbb80

    .line 154
    .line 155
    .line 156
    :goto_4
    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities$AudioProfile;->a:I

    .line 157
    .line 158
    if-eqz v9, :cond_f

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_f
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v8, 0x1d

    .line 164
    .line 165
    if-lt v7, v8, :cond_13

    .line 166
    .line 167
    move v8, v11

    .line 168
    :goto_5
    if-lez v8, :cond_12

    .line 169
    .line 170
    invoke-static {v8}, Landroidx/media3/common/util/Util;->m(I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_10

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_10
    new-instance v7, Landroid/media/AudioFormat$Builder;

    .line 178
    .line 179
    invoke-direct {v7}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v7, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v7, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {p2}, Landroidx/media3/common/AudioAttributes;->a()Landroid/media/AudioAttributes;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-static {v4, v7}, Ll0;->v(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-eqz v4, :cond_11

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_11
    :goto_6
    add-int/lit8 v8, v8, -0x1

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_12
    move v8, v10

    .line 213
    goto :goto_7

    .line 214
    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v4, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    if-eqz p0, :cond_14

    .line 227
    .line 228
    move-object p1, p0

    .line 229
    :cond_14
    check-cast p1, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    :goto_7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .line 237
    const/16 p1, 0x1c

    .line 238
    .line 239
    if-gt p0, p1, :cond_16

    .line 240
    .line 241
    if-ne v8, v3, :cond_15

    .line 242
    .line 243
    move v5, v6

    .line 244
    goto :goto_8

    .line 245
    :cond_15
    const/4 p0, 0x3

    .line 246
    if-eq v8, p0, :cond_17

    .line 247
    .line 248
    const/4 p0, 0x4

    .line 249
    if-eq v8, p0, :cond_17

    .line 250
    .line 251
    const/4 p0, 0x5

    .line 252
    if-ne v8, p0, :cond_16

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_16
    move v5, v8

    .line 256
    :cond_17
    :goto_8
    sget-object p0, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    .line 257
    .line 258
    if-eq v1, v12, :cond_18

    .line 259
    .line 260
    if-ne v2, v5, :cond_18

    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_18
    invoke-static {v5}, Landroidx/media3/common/util/Util;->m(I)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    :goto_9
    if-nez v1, :cond_19

    .line 268
    .line 269
    :goto_a
    const/4 p0, 0x0

    .line 270
    return-object p0

    .line 271
    :cond_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto/16 :goto_3

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 20
    .line 21
    if-nez v3, :cond_4

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    :cond_2
    move v1, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_3
    :goto_0
    move v1, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_4
    if-nez v1, :cond_5

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v5, 0x1f

    .line 35
    .line 36
    if-lt v4, v5, :cond_6

    .line 37
    .line 38
    invoke-static {v3, v1}, Lng;->o(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_2

    .line 43
    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eq v4, v5, :cond_7

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_7
    move v5, v2

    .line 55
    :goto_1
    if-ge v5, v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :goto_2
    if-eqz v1, :cond_9

    .line 80
    .line 81
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b:I

    .line 82
    .line 83
    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b:I

    .line 84
    .line 85
    if-ne v1, v3, :cond_9

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c:Lcom/google/common/collect/ImmutableList;

    .line 88
    .line 89
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c:Lcom/google/common/collect/ImmutableList;

    .line 90
    .line 91
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d:Lcom/google/common/collect/ImmutableList;

    .line 98
    .line 99
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d:Lcom/google/common/collect/ImmutableList;

    .line 100
    .line 101
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_9

    .line 106
    .line 107
    :goto_3
    return v0

    .line 108
    :cond_9
    :goto_4
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 11
    .line 12
    if-lt v2, v1, :cond_0

    .line 13
    .line 14
    invoke-static {v3}, Lng;->b(Landroid/util/SparseArray;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/16 v2, 0x11

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    mul-int/lit8 v2, v2, 0x1f

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v5, v2

    .line 35
    mul-int/2addr v5, v1

    .line 36
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/2addr v2, v5

    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    add-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c:Lcom/google/common/collect/ImmutableList;

    .line 51
    .line 52
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v0

    .line 57
    mul-int/2addr v2, v1

    .line 58
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d:Lcom/google/common/collect/ImmutableList;

    .line 59
    .line 60
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v2

    .line 65
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioCapabilities[maxChannelCount="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", audioProfiles="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", speakerLayoutChannelMasks="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->c:Lcom/google/common/collect/ImmutableList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", spatializerChannelMasks="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d:Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
