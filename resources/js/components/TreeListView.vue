<template>
    <div class="col-md-12">
        <section class="card">
            <header class="card-header">
                Date Pickers
                <span class="tools pull-right">
                    <a href="javascript:;" class="fa fa-chevron-down"></a>
                    <a href="javascript:;" class="fa fa-times"></a>
                </span>
            </header>
            <div class="card-body">
                <form class="picker-form">
                    <div class="form-group row">
                        <label class="col-form-label col-lg-3 col-sm-12 "
                            >Input</label
                        >
                        <div class="col-lg-6 col-md-9 col-sm-12">
                            <input
                                type="text"
                                class="form-control date-picker-input"
                                value="Select Date"
                            />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-3 col-sm-12 "
                            >Input Group</label
                        >
                        <div class="col-lg-6 col-md-9 col-sm-12">
                            <div
                                class="input-group date dpYears"
                                data-date-viewmode="years"
                                data-date-format="dd-mm-yyyy"
                                data-date="03-10-2018"
                            >
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="03-10-2018"
                                    aria-label="Right Icon"
                                    aria-describedby="dp-ig"
                                />
                                <div class="input-group-append">
                                    <button
                                        id="dp-ig"
                                        class="btn btn-outline-secondary"
                                        type="button"
                                    >
                                        <i class="fa fa-calendar f14"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-3 col-sm-12 "
                            >Months &amp; Date Only</label
                        >
                        <div class="col-lg-6 col-md-9 col-sm-12">
                            <div
                                class="input-group date dpMonths"
                                data-date-viewmode="months"
                                data-date-format="mm/yyyy"
                                data-date="12-08-2017"
                            >
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="03-07"
                                    aria-label="Right Icon"
                                    aria-describedby="dp-mdo"
                                />
                                <div class="input-group-append">
                                    <button
                                        id="dp-mdo"
                                        class="btn btn-primary"
                                        type="button"
                                    >
                                        <i class="fa fa-calendar f14"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-3 col-sm-12 "
                            >Helper Buttons</label
                        >
                        <div class="col-lg-6 col-md-9 col-sm-12">
                            <div
                                class="input-group date"
                                id="helper-datepicker"
                            >
                                <input
                                    type="text"
                                    class="form-control"
                                    value="02/25/2018"
                                />
                                <div class="input-group-append">
                                    <button
                                        class="btn btn-success"
                                        type="button"
                                    >
                                        <i class="fa fa-calendar f14"></i>
                                    </button>
                                </div>
                            </div>
                            <span class="text-muted">
                                clear and today helper buttons added
                            </span>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-form-label col-lg-3 col-sm-12 "
                            >Date Range</label
                        >
                        <div class="col-lg-6 col-md-9 col-sm-12">
                            <div
                                class="input-group"
                                data-date="12/07/2017"
                                data-date-format="mm/dd/yyyy"
                            >
                                <input
                                    type="text"
                                    class="form-control rounded dpd1"
                                    name="from"
                                />
                                <span class="px-3 py-2">To</span>
                                <input
                                    type="text"
                                    class="form-control rounded dpd2"
                                    name="to"
                                />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</template>
