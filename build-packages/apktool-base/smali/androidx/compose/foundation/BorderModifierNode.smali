.class public final Landroidx/compose/foundation/BorderModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public A:F

.field public B:Landroidx/compose/ui/graphics/SolidColor;

.field public C:Landroidx/compose/ui/graphics/Shape;

.field public final D:Landroidx/compose/ui/draw/CacheDrawModifierNode;

.field public z:Landroidx/compose/foundation/BorderCache;


# direct methods
.method public constructor <init>(FLandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/BorderModifierNode;->A:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/BorderModifierNode;->B:Landroidx/compose/ui/graphics/SolidColor;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/BorderModifierNode;->C:Landroidx/compose/ui/graphics/Shape;

    .line 9
    .line 10
    new-instance p1, Landroidx/compose/foundation/b;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2, p0}, Landroidx/compose/foundation/b;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/ui/draw/DrawModifierKt;->a(Landroidx/compose/foundation/b;)Landroidx/compose/ui/draw/CacheDrawModifierNode;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->Y0(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/foundation/BorderModifierNode;->D:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final E0(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/BorderModifierNode;->C:Landroidx/compose/ui/graphics/Shape;

    .line 2
    .line 3
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/graphics/Shape;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
