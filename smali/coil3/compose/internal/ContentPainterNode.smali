.class public final Lcoil3/compose/internal/ContentPainterNode;
.super Lcoil3/compose/internal/AbstractContentPainterNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final D:Lcoil3/compose/AsyncImagePainter;


# direct methods
.method public constructor <init>(Lcoil3/compose/AsyncImagePainter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Lcoil3/compose/ConstraintsSizeResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->x:Landroidx/compose/ui/Alignment;

    .line 5
    .line 6
    iput-object p3, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->y:Landroidx/compose/ui/layout/ContentScale;

    .line 7
    .line 8
    const/high16 p2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    iput p2, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->z:F

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->A:Z

    .line 14
    .line 15
    iput-object p4, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->B:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Lcoil3/compose/internal/AbstractContentPainterNode;->C:Lcoil3/compose/ConstraintsSizeResolver;

    .line 18
    .line 19
    iput-object p1, p0, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final Q0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->M0()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 6
    .line 7
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->u:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final R0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final S0()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/compose/internal/ContentPainterNode;->D:Lcoil3/compose/AsyncImagePainter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcoil3/compose/AsyncImagePainter;->n(Lcoil3/compose/AsyncImagePainter$Input;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
