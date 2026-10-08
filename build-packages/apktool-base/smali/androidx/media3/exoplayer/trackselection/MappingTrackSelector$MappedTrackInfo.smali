.class public final Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final d:[I

.field public final e:[[[I

.field public final f:Landroidx/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public constructor <init>([I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->e:[[[I

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->d:[I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->f:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 13
    .line 14
    array-length p1, p1

    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    .line 16
    .line 17
    return-void
.end method
