.class public final synthetic Lr6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

.field public final synthetic m:Landroidx/compose/ui/Modifier;

.field public final synthetic n:Lkotlin/jvm/functions/Function3;

.field public final synthetic o:Lkotlin/jvm/functions/Function0;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr6;->j:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lr6;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Lr6;->l:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 9
    .line 10
    iput-object p4, p0, Lr6;->m:Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    iput-object p5, p0, Lr6;->n:Lkotlin/jvm/functions/Function3;

    .line 13
    .line 14
    iput-object p6, p0, Lr6;->o:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iput p7, p0, Lr6;->p:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    iget p1, p0, Lr6;->p:I

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
    iget-object v0, p0, Lr6;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v1, p0, Lr6;->k:Z

    .line 20
    .line 21
    iget-object v2, p0, Lr6;->l:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 22
    .line 23
    iget-object v3, p0, Lr6;->m:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    iget-object v4, p0, Lr6;->n:Lkotlin/jvm/functions/Function3;

    .line 26
    .line 27
    iget-object v5, p0, Lr6;->o:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->c(Ljava/lang/String;ZLandroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
