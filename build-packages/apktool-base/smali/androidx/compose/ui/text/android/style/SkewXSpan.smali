.class public Landroidx/compose/ui/text/android/style/SkewXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->j:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->j:F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-float/2addr v0, p0

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->j:F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-float/2addr v0, p0

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
