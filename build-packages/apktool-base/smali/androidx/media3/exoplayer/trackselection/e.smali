.class public final synthetic Landroidx/media3/exoplayer/trackselection/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/e;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/e;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 10

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v5, v1

    .line 9
    :goto_0
    iget v1, p2, Landroidx/media3/common/TrackGroup;->a:I

    .line 10
    .line 11
    if-ge v5, v1, :cond_0

    .line 12
    .line 13
    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;

    .line 14
    .line 15
    aget v7, p3, v5

    .line 16
    .line 17
    iget-object v6, p0, Landroidx/media3/exoplayer/trackselection/e;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 18
    .line 19
    iget-object v8, p0, Landroidx/media3/exoplayer/trackselection/e;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, p0, Landroidx/media3/exoplayer/trackselection/e;->c:Ljava/lang/String;

    .line 22
    .line 23
    move v3, p1

    .line 24
    move-object v4, p2

    .line 25
    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TextTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
