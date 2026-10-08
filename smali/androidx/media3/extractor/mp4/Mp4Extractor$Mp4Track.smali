.class final Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4Track"
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/mp4/Track;

.field public final b:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final c:Landroidx/media3/extractor/TrackOutput;

.field public final d:Landroidx/media3/extractor/TrueHdSampleRechunker;

.field public final e:Z

.field public final f:Z

.field public g:I

.field public h:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->a:Landroidx/media3/extractor/mp4/Track;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    .line 9
    .line 10
    iget p2, p1, Landroidx/media3/extractor/mp4/Track;->b:I

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 13
    .line 14
    const/4 p3, 0x2

    .line 15
    if-ne p2, p3, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:Z

    .line 21
    .line 22
    iget-object p2, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 23
    .line 24
    const-string p3, "application/x-itut-t35"

    .line 25
    .line 26
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput-boolean p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->f:Z

    .line 31
    .line 32
    const-string p2, "audio/true-hd"

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    new-instance p1, Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 43
    .line 44
    invoke-direct {p1}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->d:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 50
    .line 51
    return-void
.end method
