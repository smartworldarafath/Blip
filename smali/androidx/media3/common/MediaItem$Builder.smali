.class public final Landroidx/media3/common/MediaItem$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public final c:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

.field public final d:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

.field public final e:Ljava/util/List;

.field public final f:Lcom/google/common/collect/ImmutableList;

.field public final g:J

.field public final h:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

.field public final i:Landroidx/media3/common/MediaItem$RequestMetadata;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->c:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->d:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 20
    .line 21
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->f:Lcom/google/common/collect/ImmutableList;

    .line 30
    .line 31
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->h:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 37
    .line 38
    sget-object v0, Landroidx/media3/common/MediaItem$RequestMetadata;->a:Landroidx/media3/common/MediaItem$RequestMetadata;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->i:Landroidx/media3/common/MediaItem$RequestMetadata;

    .line 41
    .line 42
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/media3/common/MediaItem$Builder;->g:J

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/MediaItem;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->d:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/media3/common/MediaItem$Builder;->f:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    iget-wide v5, p0, Landroidx/media3/common/MediaItem$Builder;->g:J

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/media3/common/MediaItem$Builder;->e:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/common/collect/ImmutableList;J)V

    .line 19
    .line 20
    .line 21
    :goto_0
    move-object v5, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    new-instance v2, Landroidx/media3/common/MediaItem;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :goto_2
    move-object v3, v0

    .line 32
    goto :goto_3

    .line 33
    :cond_1
    const-string v0, ""

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_3
    new-instance v4, Landroidx/media3/common/MediaItem$ClippingProperties;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->c:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    .line 39
    .line 40
    invoke-direct {v4, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->h:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v6, Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v7, Landroidx/media3/common/MediaMetadata;->C:Landroidx/media3/common/MediaMetadata;

    .line 54
    .line 55
    iget-object v8, p0, Landroidx/media3/common/MediaItem$Builder;->i:Landroidx/media3/common/MediaItem$RequestMetadata;

    .line 56
    .line 57
    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    .line 58
    .line 59
    .line 60
    return-object v2
.end method
