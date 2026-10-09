.class public interface abstract Landroidx/media3/extractor/text/SubtitleParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/SubtitleParser$Factory;
    }
.end annotation


# virtual methods
.method public a([BII)Landroidx/media3/extractor/text/Subtitle;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lp;

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Lp;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {p0, p1, v1, p3, v0}, Landroidx/media3/extractor/text/SubtitleParser;->b([BIILandroidx/media3/common/util/Consumer;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/CuesWithTimingSubtitle;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public abstract b([BIILandroidx/media3/common/util/Consumer;)V
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
