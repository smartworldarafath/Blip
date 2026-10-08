.class public abstract Landroidx/media3/extractor/ForwardingExtractorInput;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;


# instance fields
.field public final a:Landroidx/media3/extractor/ExtractorInput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a([BIIZ)Z
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 3
    .line 4
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->a([BIIZ)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final c(IZ)Z
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 3
    .line 4
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorInput;->c(IZ)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final d([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ExtractorInput;->d([BIIZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->f(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h([BII)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->h([BII)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final j()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->o()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final readFully([BII)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
