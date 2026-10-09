.class public final synthetic Ly;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/Pair;

.field public final synthetic n:Lkotlin/Pair;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ly;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Ly;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Ly;->m:Lkotlin/Pair;

    .line 11
    .line 12
    iput-object p5, p0, Ly;->n:Lkotlin/Pair;

    .line 13
    .line 14
    iput-object p6, p0, Ly;->o:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput p7, p0, Ly;->p:I

    .line 17
    .line 18
    iput p8, p0, Ly;->q:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Ly;->p:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v0, p0, Ly;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Ly;->k:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v2, p0, Ly;->l:Z

    .line 22
    .line 23
    iget-object v3, p0, Ly;->m:Lkotlin/Pair;

    .line 24
    .line 25
    iget-object v4, p0, Ly;->n:Lkotlin/Pair;

    .line 26
    .line 27
    iget-object v5, p0, Ly;->o:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    iget v8, p0, Ly;->q:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lnet/blip/android/ui/components/AlertDialogKt;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/Pair;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
