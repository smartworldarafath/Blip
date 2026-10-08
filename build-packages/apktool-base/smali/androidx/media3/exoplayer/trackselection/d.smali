.class public final synthetic Landroidx/media3/exoplayer/trackselection/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final synthetic b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic c:Z

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/d;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/d;->b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/exoplayer/trackselection/d;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/d;->d:[I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media3/common/TrackGroup;[I)Ljava/util/List;
    .locals 10

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/d;->a:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v8, Lo7;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/media3/exoplayer/trackselection/d;->b:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 11
    .line 12
    invoke-direct {v8, v0, v5}, Lo7;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/d;->d:[I

    .line 16
    .line 17
    aget v9, v0, p1

    .line 18
    .line 19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move v4, v1

    .line 25
    :goto_0
    iget v1, p2, Landroidx/media3/common/TrackGroup;->a:I

    .line 26
    .line 27
    if-ge v4, v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    .line 30
    .line 31
    aget v6, p3, v4

    .line 32
    .line 33
    iget-boolean v7, p0, Landroidx/media3/exoplayer/trackselection/d;->c:Z

    .line 34
    .line 35
    move v2, p1

    .line 36
    move-object v3, p2

    .line 37
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLo7;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
