context("htmlwidget")

test_that("conversion", {
  expect_is(as.htmlwidget(formattable(mtcars)), "formattable_widget")
  expect_is(as.htmlwidget(formattable(mtcars)), "htmlwidget")
})

test_that("htmloutput",{
  expect_identical(
    as.htmlwidget(formattable(mtcars[1,]))$x$html
    , "<table><thead>\n<tr>\n<th class=\"text-left\"></th>\n<th class=\"text-right\">mpg</th>\n<th class=\"text-right\">cyl</th>\n<th class=\"text-right\">disp</th>\n<th class=\"text-right\">hp</th>\n<th class=\"text-right\">drat</th>\n<th class=\"text-right\">wt</th>\n<th class=\"text-right\">qsec</th>\n<th class=\"text-right\">vs</th>\n<th class=\"text-right\">am</th>\n<th class=\"text-right\">gear</th>\n<th class=\"text-right\">carb</th>\n</tr>\n</thead><tbody>\n<tr>\n<td class=\"text-left\">Mazda RX4</td>\n<td class=\"text-right\">21</td>\n<td class=\"text-right\">6</td>\n<td class=\"text-right\">160</td>\n<td class=\"text-right\">110</td>\n<td class=\"text-right\">3.9</td>\n<td class=\"text-right\">2.62</td>\n<td class=\"text-right\">16.46</td>\n<td class=\"text-right\">0</td>\n<td class=\"text-right\">1</td>\n<td class=\"text-right\">4</td>\n<td class=\"text-right\">4</td>\n</tr>\n</tbody></table>\n"
  )
})
