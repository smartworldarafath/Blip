.class public interface abstract Landroidx/media3/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public abstract a(Landroidx/media3/common/DataReader;IZ)I
.end method

.method public abstract b(Landroidx/media3/common/util/ParsableByteArray;II)V
.end method

.method public c(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/DataReader;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public d(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract e(Landroidx/media3/common/Format;)V
.end method

.method public f(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p2, p1, v0}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
.end method
