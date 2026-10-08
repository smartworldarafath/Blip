.class public final Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerIconService;


# instance fields
.field public a:Landroidx/compose/ui/input/pointer/PointerIcon;

.field public final synthetic b:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/input/pointer/PointerIcon;->a:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIcon;->a:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->a:Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 9
    .line 10
    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->a:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->a(Landroid/view/View;Landroidx/compose/ui/input/pointer/PointerIcon;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
