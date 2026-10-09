.class public final Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;


# instance fields
.field public final a:Landroidx/media3/extractor/DefaultExtractorsFactory;

.field public b:Landroidx/media3/extractor/Extractor;

.field public c:Landroidx/media3/extractor/DefaultExtractorInput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/DefaultExtractorsFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a:Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    return-wide v0
.end method

.method public final b(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 29

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Landroidx/media3/extractor/DefaultExtractorInput;

    move-object/from16 v3, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    .line 2
    iput-object v2, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    .line 3
    iget-object v0, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v3, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->a:Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 5
    monitor-enter v3

    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:[I

    const/16 v5, 0x15

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    const-string v6, "Content-Type"

    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 9
    :cond_3
    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x14

    const/16 v13, 0x13

    const/16 v14, 0x12

    const/16 v15, 0x11

    const/16 v16, 0x10

    const/16 v17, 0xf

    const/16 v18, 0xe

    const/16 v19, 0xd

    const/16 v20, 0xc

    const/16 v21, 0xb

    const/16 v22, 0xa

    const/16 v23, 0x9

    const/16 v24, 0x7

    const/16 v25, 0x6

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/16 v28, 0x3

    sparse-switch v11, :sswitch_data_0

    :goto_2
    move v6, v8

    goto/16 :goto_3

    :sswitch_0
    const-string v11, "video/x-matroska"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v6, 0x1f

    goto/16 :goto_3

    :sswitch_1
    const-string v11, "audio/webm"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0x1e

    goto/16 :goto_3

    :sswitch_2
    const-string v11, "audio/mpeg"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    const/16 v6, 0x1d

    goto/16 :goto_3

    :sswitch_3
    const-string v11, "audio/midi"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/16 v6, 0x1c

    goto/16 :goto_3

    :sswitch_4
    const-string v11, "audio/flac"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/16 v6, 0x1b

    goto/16 :goto_3

    :sswitch_5
    const-string v11, "audio/eac3"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/16 v6, 0x1a

    goto/16 :goto_3

    :sswitch_6
    const-string v11, "audio/3gpp"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    const/16 v6, 0x19

    goto/16 :goto_3

    :sswitch_7
    const-string v11, "video/mp4"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    :cond_b
    const/16 v6, 0x18

    goto/16 :goto_3

    :sswitch_8
    const-string v11, "audio/wav"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    const/16 v6, 0x17

    goto/16 :goto_3

    :sswitch_9
    const-string v11, "audio/ogg"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v6, 0x16

    goto/16 :goto_3

    :sswitch_a
    const-string v11, "audio/mp4"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_2

    :cond_e
    move v6, v5

    goto/16 :goto_3

    :sswitch_b
    const-string v11, "audio/amr"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_2

    :cond_f
    move v6, v12

    goto/16 :goto_3

    :sswitch_c
    const-string v11, "audio/ac4"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_2

    :cond_10
    move v6, v13

    goto/16 :goto_3

    :sswitch_d
    const-string v11, "audio/ac3"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_2

    :cond_11
    move v6, v14

    goto/16 :goto_3

    :sswitch_e
    const-string v11, "video/x-flv"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto/16 :goto_2

    :cond_12
    move v6, v15

    goto/16 :goto_3

    :sswitch_f
    const-string v11, "application/webm"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto/16 :goto_2

    :cond_13
    move/from16 v6, v16

    goto/16 :goto_3

    :sswitch_10
    const-string v11, "audio/x-matroska"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto/16 :goto_2

    :cond_14
    move/from16 v6, v17

    goto/16 :goto_3

    :sswitch_11
    const-string v11, "image/png"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto/16 :goto_2

    :cond_15
    move/from16 v6, v18

    goto/16 :goto_3

    :sswitch_12
    const-string v11, "image/bmp"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_2

    :cond_16
    move/from16 v6, v19

    goto/16 :goto_3

    :sswitch_13
    const-string v11, "text/vtt"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto/16 :goto_2

    :cond_17
    move/from16 v6, v20

    goto/16 :goto_3

    :sswitch_14
    const-string v11, "video/x-msvideo"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto/16 :goto_2

    :cond_18
    move/from16 v6, v21

    goto/16 :goto_3

    :sswitch_15
    const-string v11, "application/mp4"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_2

    :cond_19
    move/from16 v6, v22

    goto/16 :goto_3

    :sswitch_16
    const-string v11, "image/webp"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto/16 :goto_2

    :cond_1a
    move/from16 v6, v23

    goto/16 :goto_3

    :sswitch_17
    const-string v11, "image/jpeg"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto/16 :goto_2

    :cond_1b
    move v6, v9

    goto/16 :goto_3

    :sswitch_18
    const-string v11, "image/heif"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_2

    :cond_1c
    move/from16 v6, v24

    goto :goto_3

    :sswitch_19
    const-string v11, "image/heic"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto/16 :goto_2

    :cond_1d
    move/from16 v6, v25

    goto :goto_3

    :sswitch_1a
    const-string v11, "image/avif"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_2

    :cond_1e
    move/from16 v6, v26

    goto :goto_3

    :sswitch_1b
    const-string v11, "audio/amr-wb"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto/16 :goto_2

    :cond_1f
    move/from16 v6, v27

    goto :goto_3

    :sswitch_1c
    const-string v11, "video/webm"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_2

    :cond_20
    move/from16 v6, v28

    goto :goto_3

    :sswitch_1d
    const-string v11, "video/mp2t"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_2

    :cond_21
    const/4 v6, 0x2

    goto :goto_3

    :sswitch_1e
    const-string v11, "video/mp2p"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_2

    :cond_22
    move v6, v10

    goto :goto_3

    :sswitch_1f
    const-string v11, "audio/eac3-joc"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_2

    :cond_23
    move v6, v7

    :goto_3
    packed-switch v6, :pswitch_data_0

    :goto_4
    move v12, v8

    goto :goto_5

    :pswitch_0
    move/from16 v12, v24

    goto :goto_5

    :pswitch_1
    move/from16 v12, v17

    goto :goto_5

    :pswitch_2
    move/from16 v12, v27

    goto :goto_5

    :pswitch_3
    move/from16 v12, v20

    goto :goto_5

    :pswitch_4
    move/from16 v12, v23

    goto :goto_5

    :pswitch_5
    move v12, v10

    goto :goto_5

    :pswitch_6
    move/from16 v12, v26

    goto :goto_5

    :pswitch_7
    move v12, v15

    goto :goto_5

    :pswitch_8
    move v12, v13

    goto :goto_5

    :pswitch_9
    move/from16 v12, v19

    goto :goto_5

    :pswitch_a
    move/from16 v12, v16

    goto :goto_5

    :pswitch_b
    move v12, v9

    goto :goto_5

    :pswitch_c
    move v12, v14

    goto :goto_5

    :pswitch_d
    move/from16 v12, v18

    goto :goto_5

    :pswitch_e
    move v12, v5

    goto :goto_5

    :pswitch_f
    move/from16 v12, v28

    goto :goto_5

    :pswitch_10
    move/from16 v12, v25

    goto :goto_5

    :pswitch_11
    move/from16 v12, v21

    goto :goto_5

    :pswitch_12
    move/from16 v12, v22

    goto :goto_5

    :pswitch_13
    move v12, v7

    :goto_5
    :pswitch_14
    if-eq v12, v8, :cond_24

    .line 11
    :try_start_1
    invoke-virtual {v3, v12, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->a(ILjava/util/ArrayList;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    .line 12
    :cond_24
    :goto_6
    invoke-static/range {p2 .. p2}, Landroidx/media3/common/FileTypes;->a(Landroid/net/Uri;)I

    move-result v6

    if-eq v6, v8, :cond_25

    if-eq v6, v12, :cond_25

    .line 13
    invoke-virtual {v3, v6, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->a(ILjava/util/ArrayList;)V

    :cond_25
    move v8, v7

    :goto_7
    if-ge v8, v5, :cond_27

    .line 14
    aget v11, v4, v8

    if-eq v11, v12, :cond_26

    if-eq v11, v6, :cond_26

    .line 15
    invoke-virtual {v3, v11, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->a(ILjava/util/ArrayList;)V

    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 16
    :cond_27
    new-array v4, v7, [Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/extractor/Extractor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 17
    array-length v3, v0

    .line 18
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->l(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 19
    array-length v4, v0

    if-ne v4, v10, :cond_28

    .line 20
    aget-object v0, v0, v7

    iput-object v0, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    goto :goto_f

    .line 21
    :cond_28
    array-length v4, v0

    move v5, v7

    :goto_8
    if-ge v5, v4, :cond_2e

    aget-object v6, v0, v5

    .line 22
    :try_start_2
    invoke-interface {v6, v2}, Landroidx/media3/extractor/Extractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 23
    iput-object v6, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    iput v7, v2, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 25
    :cond_29
    :try_start_3
    invoke-interface {v6}, Landroidx/media3/extractor/Extractor;->e()Ljava/util/List;

    move-result-object v6

    .line 26
    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->f(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    iget-object v6, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez v6, :cond_2b

    .line 28
    iget-wide v11, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    cmp-long v6, v11, p4

    if-nez v6, :cond_2a

    goto :goto_9

    :cond_2a
    move v6, v7

    goto :goto_a

    :cond_2b
    :goto_9
    move v6, v10

    .line 29
    :goto_a
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 30
    iput v7, v2, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    goto :goto_d

    .line 31
    :goto_b
    iget-object v1, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez v1, :cond_2d

    .line 32
    iget-wide v3, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    cmp-long v1, v3, p4

    if-nez v1, :cond_2c

    goto :goto_c

    :cond_2c
    move v10, v7

    .line 33
    :cond_2d
    :goto_c
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 34
    iput v7, v2, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    .line 35
    throw v0

    .line 36
    :catch_0
    iget-object v6, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-nez v6, :cond_2b

    .line 37
    iget-wide v11, v2, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    cmp-long v6, v11, p4

    if-nez v6, :cond_2a

    goto :goto_9

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 38
    :cond_2e
    :goto_e
    iget-object v2, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    if-eqz v2, :cond_2f

    .line 39
    :goto_f
    iget-object v0, v1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    move-object/from16 v1, p8

    invoke-interface {v0, v1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorOutput;)V

    return-void

    .line 40
    :cond_2f
    new-instance v1, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "None of the available extractors ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    .line 41
    new-instance v5, Lcom/google/common/base/Joiner;

    invoke-direct {v5, v4}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->o([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v4, Lu2;

    invoke-direct {v4, v9}, Lu2;-><init>(I)V

    .line 43
    invoke-static {v0, v4}, Lcom/google/common/collect/Lists;->b(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4, v0}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 48
    :goto_10
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_1f
        -0x6315f78b -> :sswitch_1e
        -0x6315f787 -> :sswitch_1d
        -0x63118f53 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x58abd7ba -> :sswitch_1a
        -0x58a8e8f5 -> :sswitch_19
        -0x58a8e8f2 -> :sswitch_18
        -0x58a7d764 -> :sswitch_17
        -0x58a21830 -> :sswitch_16
        -0x4a681e4e -> :sswitch_15
        -0x405dba54 -> :sswitch_14
        -0x3be2f26c -> :sswitch_13
        -0x3468a12f -> :sswitch_12
        -0x34686c8b -> :sswitch_11
        -0x17118226 -> :sswitch_10
        -0x2974308 -> :sswitch_f
        0xd45707 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0xb269699 -> :sswitch_c
        0xb26980d -> :sswitch_b
        0xb26c538 -> :sswitch_a
        0xb26cbd6 -> :sswitch_9
        0xb26e933 -> :sswitch_8
        0x4f62635d -> :sswitch_7
        0x59976a2d -> :sswitch_6
        0x59ae0c65 -> :sswitch_5
        0x59aeaa01 -> :sswitch_4
        0x59b1cdba -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x59b64a32 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_14
        :pswitch_14
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_10
        :pswitch_10
        :pswitch_6
        :pswitch_13
        :pswitch_5
        :pswitch_f
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method
