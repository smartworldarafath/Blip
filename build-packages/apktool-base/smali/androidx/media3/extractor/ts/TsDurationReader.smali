.class final Landroidx/media3/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroidx/media3/common/util/ParsableByteArray;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->f:J

    .line 19
    .line 20
    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    .line 23
    .line 24
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v2, v0

    .line 9
    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->c:Z

    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
