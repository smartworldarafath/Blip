.class public final Landroidx/compose/ui/platform/ScrollObservationScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# instance fields
.field public final j:I

.field public final k:Ljava/util/List;

.field public l:Ljava/lang/Float;

.field public m:Ljava/lang/Float;

.field public n:Landroidx/compose/ui/semantics/ScrollAxisRange;

.field public o:Landroidx/compose/ui/semantics/ScrollAxisRange;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->j:I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->k:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->l:Ljava/lang/Float;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->m:Ljava/lang/Float;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->n:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->o:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
