.class public final synthetic Landroidx/compose/runtime/saveable/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/saveable/SaveableHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/saveable/c;->j:Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/saveable/c;->j:Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->j:Landroidx/compose/runtime/saveable/Saver;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->m:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0, v1}, Landroidx/compose/runtime/saveable/Saver;->b(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, "Value should be initialized"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method
