.class public final Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;
.super Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertNodeFixup"
.end annotation


# static fields
.field public static final c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertNodeFixup;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p4

    .line 6
    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    const/4 p5, 0x1

    .line 13
    invoke-virtual {p1, p5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    check-cast p5, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p3, p1, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->U(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, p0, p4}, Landroidx/compose/runtime/Applier;->i(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Applier;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final b(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations$OpIterator;->b(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 7
    .line 8
    return-object p0
.end method
