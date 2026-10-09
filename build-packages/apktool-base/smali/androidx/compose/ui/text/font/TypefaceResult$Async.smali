.class public final Landroidx/compose/ui/text/font/TypefaceResult$Async;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/font/TypefaceResult;
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/TypefaceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Async"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/text/font/TypefaceResult;",
        "Landroidx/compose/runtime/State<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Landroidx/compose/ui/text/font/AsyncFontListLoader;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/font/TypefaceResult$Async;->j:Landroidx/compose/ui/text/font/AsyncFontListLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Async;->j:Landroidx/compose/ui/text/font/AsyncFontListLoader;

    .line 2
    .line 3
    iget-boolean p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->n:Z

    .line 4
    .line 5
    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Async;->j:Landroidx/compose/ui/text/font/AsyncFontListLoader;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->m:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
