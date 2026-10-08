.class public final synthetic Lrh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/Modifier;

.field public final synthetic k:Lnet/blip/libblip/frontend/Transfer;

.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrh;->j:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Lrh;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 7
    .line 8
    iput-boolean p3, p0, Lrh;->l:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lrh;->m:Z

    .line 11
    .line 12
    iput-object p5, p0, Lrh;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lrh;->o:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Lrh;->p:Lkotlin/jvm/functions/Function0;

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
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    iget-object v0, p0, Lrh;->j:Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    iget-object v1, p0, Lrh;->k:Lnet/blip/libblip/frontend/Transfer;

    .line 17
    .line 18
    iget-boolean v2, p0, Lrh;->l:Z

    .line 19
    .line 20
    iget-boolean v3, p0, Lrh;->m:Z

    .line 21
    .line 22
    iget-object v4, p0, Lrh;->n:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lrh;->o:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    iget-object v6, p0, Lrh;->p:Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    invoke-static/range {v0 .. v8}, Lnet/blip/android/ui/transfer/TransferHeaderKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;ZZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
