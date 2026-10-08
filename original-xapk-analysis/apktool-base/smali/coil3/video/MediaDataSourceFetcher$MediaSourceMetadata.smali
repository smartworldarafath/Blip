.class public final Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;
.super Lcoil3/decode/ImageSource$Metadata;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/video/MediaDataSourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceMetadata"
.end annotation


# instance fields
.field public final a:Landroid/media/MediaDataSource;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/video/MediaDataSourceFetcher$MediaSourceMetadata;->a:Landroid/media/MediaDataSource;

    .line 5
    .line 6
    return-void
.end method
