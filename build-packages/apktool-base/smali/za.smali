.class public final synthetic Lza;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:F

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/ArrayList;IIFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lza;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lza;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lza;->l:I

    .line 9
    .line 10
    iput p4, p0, Lza;->m:I

    .line 11
    .line 12
    iput p5, p0, Lza;->n:F

    .line 13
    .line 14
    iput-object p6, p0, Lza;->o:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p7, p0, Lza;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0xdb6001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    iget-object v0, p0, Lza;->j:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    iget-object v1, p0, Lza;->k:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget v2, p0, Lza;->l:I

    .line 21
    .line 22
    iget v3, p0, Lza;->m:I

    .line 23
    .line 24
    iget v4, p0, Lza;->n:F

    .line 25
    .line 26
    iget-object v5, p0, Lza;->o:Lkotlin/jvm/functions/Function2;

    .line 27
    .line 28
    iget-object v6, p0, Lza;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 29
    .line 30
    invoke-static/range {v0 .. v8}, Lnet/blip/android/ui/components/MaxRowGridKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/ArrayList;IIFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
