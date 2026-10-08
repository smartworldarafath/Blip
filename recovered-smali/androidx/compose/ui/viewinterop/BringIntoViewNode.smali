.class final Landroidx/compose/ui/viewinterop/BringIntoViewNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public x:Lm2;

.field public final y:Landroidx/compose/ui/viewinterop/a;


# direct methods
.method public constructor <init>(Lm2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->x:Lm2;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/viewinterop/a;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/viewinterop/a;-><init>(Landroidx/compose/ui/Modifier$Node;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->y:Landroidx/compose/ui/viewinterop/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->x:Lm2;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->y:Landroidx/compose/ui/viewinterop/a;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;->x:Lm2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method
