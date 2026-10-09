.class public final Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;
.super Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;->a:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;->b:Landroid/text/TextPaint;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;->b:Landroid/text/TextPaint;

    .line 8
    .line 9
    invoke-static {p0, v0, v1, p1}, Lx4;->t(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;->a:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;->b:Landroid/text/TextPaint;

    .line 8
    .line 9
    invoke-static {p0, v0, v1, p1}, Lx4;->b(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
