.class public final synthetic Landroidx/compose/ui/draw/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

.field public final synthetic k:Landroidx/compose/ui/draw/CacheDrawScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;Landroidx/compose/ui/draw/CacheDrawScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/draw/a;->j:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/draw/a;->k:Landroidx/compose/ui/draw/CacheDrawScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/a;->k:Landroidx/compose/ui/draw/CacheDrawScope;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/draw/a;->j:Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->z:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method
