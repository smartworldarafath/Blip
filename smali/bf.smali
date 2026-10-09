.class public final synthetic Lbf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/selection/SelectableInfo;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectableInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbf;->j:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 5
    .line 6
    iput p2, p0, Lbf;->k:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lbf;->j:Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/SelectableInfo;->d:Landroidx/compose/ui/text/TextLayoutResult;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 6
    .line 7
    iget p0, p0, Lbf;->k:I

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/MultiParagraph;->d(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
