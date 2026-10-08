.class public final synthetic Landroidx/compose/ui/input/pointer/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

.field public final synthetic k:Landroidx/compose/ui/input/pointer/PointerInteropFilter;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;Landroidx/compose/ui/input/pointer/PointerInteropFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/a;->j:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/a;->k:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/a;->k:Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->g()Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lm2;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->k:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->l:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 33
    .line 34
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/a;->j:Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1;->b:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->g()Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lm2;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lm2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method
