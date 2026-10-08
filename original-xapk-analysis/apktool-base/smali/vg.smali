.class public final synthetic Lvg;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic p:Z

.field public final synthetic q:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardOptions;ZLandroidx/compose/ui/window/DialogProperties;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvg;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lvg;->k:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lvg;->l:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lvg;->m:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lvg;->n:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lvg;->o:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 15
    .line 16
    iput-boolean p7, p0, Lvg;->p:Z

    .line 17
    .line 18
    iput-object p8, p0, Lvg;->q:Landroidx/compose/ui/window/DialogProperties;

    .line 19
    .line 20
    iput p9, p0, Lvg;->r:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lvg;->r:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Lvg;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lvg;->k:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lvg;->l:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iget-object v3, p0, Lvg;->m:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget-object v4, p0, Lvg;->n:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    iget-object v5, p0, Lvg;->o:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 28
    .line 29
    iget-boolean v6, p0, Lvg;->p:Z

    .line 30
    .line 31
    iget-object v7, p0, Lvg;->q:Landroidx/compose/ui/window/DialogProperties;

    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Lnet/blip/android/ui/components/TextFieldDialogKt;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardOptions;ZLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
