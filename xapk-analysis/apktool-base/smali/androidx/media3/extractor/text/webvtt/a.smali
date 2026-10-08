.class public final synthetic Landroidx/media3/extractor/text/webvtt/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 2
    .line 3
    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    .line 4
    .line 5
    iget-object p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->a:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->b:I

    .line 8
    .line 9
    iget-object p1, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->a:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 10
    .line 11
    iget p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->b:I

    .line 12
    .line 13
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
