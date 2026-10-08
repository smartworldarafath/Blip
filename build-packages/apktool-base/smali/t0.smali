.class public final synthetic Lt0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt0;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lt0;->k:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lt0;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lt0;->k:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/platform/ScrollObservationScope;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W:Landroidx/collection/MutableIntList;

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/compose/ui/platform/ScrollObservationScope;->k:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->V:Lt0;

    .line 28
    .line 29
    new-instance v2, Lp0;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, v3, p1, p0}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 36
    .line 37
    invoke-virtual {p0, p1, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_0
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
