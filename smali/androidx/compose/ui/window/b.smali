.class public final synthetic Landroidx/compose/ui/window/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/window/DialogWrapper;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic m:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/window/DialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/window/b;->j:Landroidx/compose/ui/window/DialogWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/window/b;->k:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/window/b;->l:Landroidx/compose/ui/window/DialogProperties;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/ui/window/b;->m:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/b;->l:Landroidx/compose/ui/window/DialogProperties;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/window/b;->m:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/window/b;->j:Landroidx/compose/ui/window/DialogWrapper;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/window/b;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-virtual {v2, p0, v0, v1}, Landroidx/compose/ui/window/DialogWrapper;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method
