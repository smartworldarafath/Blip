.class final Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field public o:Landroidx/media3/extractor/text/cea/b;


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->o:Landroidx/media3/extractor/text/cea/b;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/extractor/text/cea/b;->a:Landroidx/media3/extractor/text/cea/CeaDecoder;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->f()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/extractor/text/cea/CeaDecoder;->b:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
