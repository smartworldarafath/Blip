.class final Landroidx/compose/ui/semantics/SemanticRegionImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/semantics/SemanticsRegion;


# instance fields
.field public final a:Landroid/graphics/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Region;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a:Landroid/graphics/Region;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/unit/IntRect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 4
    .line 5
    iget v2, p1, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 6
    .line 7
    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticRegionImpl;->a:Landroid/graphics/Region;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->set(IIII)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
