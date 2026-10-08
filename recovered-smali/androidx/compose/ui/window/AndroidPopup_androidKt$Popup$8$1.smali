.class final Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic a:Landroidx/compose/ui/window/PopupLayout;

.field public final synthetic b:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;->a:Landroidx/compose/ui/window/PopupLayout;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;->a:Landroidx/compose/ui/window/PopupLayout;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    invoke-virtual {p2, p0}, Landroidx/compose/ui/window/PopupLayout;->setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, La7;

    .line 9
    .line 10
    const/16 p2, 0xf

    .line 11
    .line 12
    invoke-direct {p0, p2}, La7;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-static {p1, p2, p2, p0}, Landroidx/compose/ui/layout/MeasureScope;->h0(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
