.class final Landroidx/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 0

    .line 1
    const-wide/16 p0, -0x1

    .line 2
    .line 3
    return-wide p0
.end method

.method public final b()Landroidx/media3/extractor/SeekMap;
    .locals 2

    .line 1
    new-instance p0, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final c(J)V
    .locals 0

    .line 1
    return-void
.end method
