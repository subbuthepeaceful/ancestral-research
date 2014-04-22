# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CensusReport.delete_all
State.delete_all

# State

alabama = State.create(name: 'Alabama', code: 'AL')
alaska = State.create(name: 'Alaska', code: 'AK')
arizona = State.create(name: 'Arizona', code: 'AZ')
arkansas = State.create(name: 'Arkansas', code: 'AR')
california = State.create(name: 'California', code: 'CA')
colorado = State.create(name: 'Colorado', code: 'CO')
connecticut = State.create(name: 'Connecticut', code: 'CT')
delaware = State.create(name: 'Delaware', code: 'De')
district_of_columbia = State.create(name: 'District of Columbia', code: 'DC')
florida = State.create(name: 'Florida', code: 'FL')
georgia = State.create(name: 'Geogia', code: 'GA')
hawaii = State.create(name: 'Hawaii', code: 'HI')
idaho = State.create(name: 'Idaho', code: 'ID')
illinois = State.create(name: 'Illinois', code: 'IL')
indiana = State.create(name: 'Indiana', code: 'IN')
iowa = State.create(name: 'Iowa', code: 'IA')
kansas = State.create(name: 'Kansas', code: 'KS')
kentucky = State.create(name: 'Kentucky', code: 'KY')
louisiana = State.create(name: 'Louisiana', code: 'LA')
maine = State.create(name: 'Maine', code: 'ME')
maryland = State.create(name: 'Maryland', code: 'MD')
massachusetts = State.create(name: 'Massachusetts', code: 'MA')
michigan = State.create(name: 'Michigan', code: 'MI')
minnesota = State.create(name: 'Minnesota', code: 'MN')
mississippi = State.create(name: 'Mississippi', code: 'MS')
missouri = State.create(name: 'Missouri', code: 'MO')
montana = State.create(name: 'Montana', code: 'MT')
nebraska = State.create(name: 'Nebraska', code: 'NE')
nevada = State.create(name: 'Nevada', code: 'NV')
new_hampshire = State.create(name: 'New Hampshire', code: 'NH')
new_jersey = State.create(name: 'New Jersey', code: 'NJ')
new_mexico = State.create(name: 'New Mexico', code: 'NM')
new_york = State.create(name: 'New York', code: 'NY')
north_carolina = State.create(name: 'North Carolina', code: 'NC')
north_dakota = State.create(name: 'North Dakota', code: 'ND')
ohio = State.create(name: 'Ohio', code: 'OH')
oklahoma = State.create(name: 'Oklahoma', code: 'OK')
oregon = State.create(name: 'Oregon', code: 'OR')
pennsylvania = State.create(name: 'Pennsylvania', code: 'PA')
rhode_island = State.create(name: 'Rhoe Island', code: 'RI')
south_carolina = State.create(name: 'South Carolina', code: 'SC')
south_dakota = State.create(name: 'South Dakota', code: 'SD')
tennessee = State.create(name: 'Tennessee', code: 'TN')
texas = State.create(name: 'Texas', code: 'TX')
utah = State.create(name: 'Utah', code: 'UT')
vermont = State.create(name: 'Vermont', code: 'VT')
virginia = State.create(name: 'Virginia', code: 'VA')
washington = State.create(name: 'Washington', code: 'WA')
west_virginia = State.create(name: 'West Virginia', code: 'WV')
wisconsin = State.create(name: 'Wisconsin', code: 'WI')
wyoming = State.create(name: 'Wyoming', code: 'WY')

# Census Reports
CensusReport.create(state: alabama, year: 1818)
CensusReport.create(state: alabama, year: 1820)
CensusReport.create(state: alabama, year: 1821)
CensusReport.create(state: alabama, year: 1823)
CensusReport.create(state: alabama, year: 1850)
CensusReport.create(state: alabama, year: 1855)
CensusReport.create(state: alabama, year: 1856)
CensusReport.create(state: alabama, year: 1907)

CensusReport.create(state: alaska, year: 1870)
CensusReport.create(state: alaska, year: 1878)
CensusReport.create(state: alaska, year: 1879)
CensusReport.create(state: alaska, year: 1881)
CensusReport.create(state: alaska, year: 1885)
CensusReport.create(state: alaska, year: 1887)
CensusReport.create(state: alaska, year: 1890)
CensusReport.create(state: alaska, year: 1891)
CensusReport.create(state: alaska, year: 1892)
CensusReport.create(state: alaska, year: 1893)
CensusReport.create(state: alaska, year: 1894)
CensusReport.create(state: alaska, year: 1895)
CensusReport.create(state: alaska, year: 1904)
CensusReport.create(state: alaska, year: 1905)
CensusReport.create(state: alaska, year: 1906)
CensusReport.create(state: alaska, year: 1907)
CensusReport.create(state: alaska, year: 1914)
CensusReport.create(state: alaska, year: 1917)

CensusReport.create(state: arizona, year: 1866)
CensusReport.create(state: arizona, year: 1867)
CensusReport.create(state: arizona, year: 1869)
CensusReport.create(state: arizona, year: 1872)
CensusReport.create(state: arizona, year: 1874)
CensusReport.create(state: arizona, year: 1876)
CensusReport.create(state: arizona, year: 1880)
CensusReport.create(state: arizona, year: 1882)

CensusReport.create(state: arkansas, year: 1823)
CensusReport.create(state: arkansas, year: 1829)
CensusReport.create(state: arkansas, year: 1865)
CensusReport.create(state: arkansas, year: 1911)

CensusReport.create(state: california, year: 1788)
CensusReport.create(state: california, year: 1790)
CensusReport.create(state: california, year: 1796)
CensusReport.create(state: california, year: 1797)
CensusReport.create(state: california, year: 1798)
CensusReport.create(state: california, year: 1816)
CensusReport.create(state: california, year: 1836)
CensusReport.create(state: california, year: 1844)
CensusReport.create(state: california, year: 1852)

CensusReport.create(state: colorado, year: 1861)
CensusReport.create(state: colorado, year: 1866)
CensusReport.create(state: colorado, year: 1885)

CensusReport.create(state: delaware, year: 1782)

CensusReport.create(state: district_of_columbia, year: 1803)
CensusReport.create(state: district_of_columbia, year: 1867)
CensusReport.create(state: district_of_columbia, year: 1878)

CensusReport.create(state: florida, year: 1825)
CensusReport.create(state: florida, year: 1855)
CensusReport.create(state: florida, year: 1866)
CensusReport.create(state: florida, year: 1867)
CensusReport.create(state: florida, year: 1868)
CensusReport.create(state: florida, year: 1875)
CensusReport.create(state: florida, year: 1885)
CensusReport.create(state: florida, year: 1895)
CensusReport.create(state: florida, year: 1935)
CensusReport.create(state: florida, year: 1945)

CensusReport.create(state: georgia, year: 1798)
CensusReport.create(state: georgia, year: 1800)
CensusReport.create(state: georgia, year: 1810)
CensusReport.create(state: georgia, year: 1827)
CensusReport.create(state: georgia, year: 1834)
CensusReport.create(state: georgia, year: 1838)
CensusReport.create(state: georgia, year: 1845)
CensusReport.create(state: georgia, year: 1852)
CensusReport.create(state: georgia, year: 1853)
CensusReport.create(state: georgia, year: 1859)
CensusReport.create(state: georgia, year: 1865)
CensusReport.create(state: georgia, year: 1879)

CensusReport.create(state: hawaii, year: 1878)
CensusReport.create(state: hawaii, year: 1890)
CensusReport.create(state: hawaii, year: 1896)

CensusReport.create(state: illinois, year: 1810)
CensusReport.create(state: illinois, year: 1818)
CensusReport.create(state: illinois, year: 1820)
CensusReport.create(state: illinois, year: 1825)
CensusReport.create(state: illinois, year: 1830)
CensusReport.create(state: illinois, year: 1835)
CensusReport.create(state: illinois, year: 1840)
CensusReport.create(state: illinois, year: 1845)
CensusReport.create(state: illinois, year: 1855)
CensusReport.create(state: illinois, year: 1865)

CensusReport.create(state: indiana, year: 1807)
CensusReport.create(state: indiana, year: 1853)
CensusReport.create(state: indiana, year: 1857)
CensusReport.create(state: indiana, year: 1871)
CensusReport.create(state: indiana, year: 1877)
CensusReport.create(state: indiana, year: 1883)
CensusReport.create(state: indiana, year: 1889)
CensusReport.create(state: indiana, year: 1901)
CensusReport.create(state: indiana, year: 1913)
CensusReport.create(state: indiana, year: 1919)
CensusReport.create(state: indiana, year: 1931)

CensusReport.create(state: iowa, year: 1836)
CensusReport.create(state: iowa, year: 1838)
CensusReport.create(state: iowa, year: 1844)
CensusReport.create(state: iowa, year: 1846)
CensusReport.create(state: iowa, year: 1847)
CensusReport.create(state: iowa, year: 1849)
CensusReport.create(state: iowa, year: 1851)
CensusReport.create(state: iowa, year: 1852)
CensusReport.create(state: iowa, year: 1854)
CensusReport.create(state: iowa, year: 1856)
CensusReport.create(state: iowa, year: 1885)
CensusReport.create(state: iowa, year: 1895)
CensusReport.create(state: iowa, year: 1905)
CensusReport.create(state: iowa, year: 1915)
CensusReport.create(state: iowa, year: 1925)

CensusReport.create(state: kansas, year: 1855)
CensusReport.create(state: kansas, year: 1865)
CensusReport.create(state: kansas, year: 1875)
CensusReport.create(state: kansas, year: 1885)
CensusReport.create(state: kansas, year: 1895)
CensusReport.create(state: kansas, year: 1905)
CensusReport.create(state: kansas, year: 1915)
CensusReport.create(state: kansas, year: 1925)

CensusReport.create(state: louisiana, year: 1853)
CensusReport.create(state: louisiana, year: 1858)

CensusReport.create(state: maine, year: 1837)

CensusReport.create(state: maryland, year: 1776)
CensusReport.create(state: maryland, year: 1778)

CensusReport.create(state: massachusetts, year: 1855)
CensusReport.create(state: massachusetts, year: 1865)

CensusReport.create(state: michigan, year: 1837)
CensusReport.create(state: michigan, year: 1845)
CensusReport.create(state: michigan, year: 1854)
CensusReport.create(state: michigan, year: 1864)
CensusReport.create(state: michigan, year: 1874)
CensusReport.create(state: michigan, year: 1884)
CensusReport.create(state: michigan, year: 1888)
CensusReport.create(state: michigan, year: 1894)
CensusReport.create(state: michigan, year: 1904)

CensusReport.create(state: minnesota, year: 1849)
CensusReport.create(state: minnesota, year: 1853)
CensusReport.create(state: minnesota, year: 1855)
CensusReport.create(state: minnesota, year: 1857)
CensusReport.create(state: minnesota, year: 1865)
CensusReport.create(state: minnesota, year: 1875)
CensusReport.create(state: minnesota, year: 1885)
CensusReport.create(state: minnesota, year: 1895)
CensusReport.create(state: minnesota, year: 1905)

CensusReport.create(state: mississippi, year: 1801)
CensusReport.create(state: mississippi, year: 1805)
CensusReport.create(state: mississippi, year: 1808)
CensusReport.create(state: mississippi, year: 1810)
CensusReport.create(state: mississippi, year: 1816)
CensusReport.create(state: mississippi, year: 1818)
CensusReport.create(state: mississippi, year: 1820)
CensusReport.create(state: mississippi, year: 1822)
CensusReport.create(state: mississippi, year: 1823)
CensusReport.create(state: mississippi, year: 1824)
CensusReport.create(state: mississippi, year: 1825)
CensusReport.create(state: mississippi, year: 1830)
CensusReport.create(state: mississippi, year: 1833)
CensusReport.create(state: mississippi, year: 1837)
CensusReport.create(state: mississippi, year: 1840)
CensusReport.create(state: mississippi, year: 1841)
CensusReport.create(state: mississippi, year: 1845)
CensusReport.create(state: mississippi, year: 1850)
CensusReport.create(state: mississippi, year: 1853)
CensusReport.create(state: mississippi, year: 1860)
CensusReport.create(state: mississippi, year: 1866)

CensusReport.create(state: missouri, year: 1797)
CensusReport.create(state: missouri, year: 1803)
CensusReport.create(state: missouri, year: 1817)
CensusReport.create(state: missouri, year: 1819)
CensusReport.create(state: missouri, year: 1840)
CensusReport.create(state: missouri, year: 1844)
CensusReport.create(state: missouri, year: 1852)
CensusReport.create(state: missouri, year: 1856)
CensusReport.create(state: missouri, year: 1860)
CensusReport.create(state: missouri, year: 1864)
CensusReport.create(state: missouri, year: 1876)
CensusReport.create(state: missouri, year: 1880)

CensusReport.create(state: nebraska, year: 1854)
CensusReport.create(state: nebraska, year: 1855)
CensusReport.create(state: nebraska, year: 1856)
CensusReport.create(state: nebraska, year: 1865)
CensusReport.create(state: nebraska, year: 1869)
CensusReport.create(state: nebraska, year: 1885)

CensusReport.create(state: nevada, year: 1862)
CensusReport.create(state: nevada, year: 1863)
CensusReport.create(state: nevada, year: 1875)

CensusReport.create(state: new_jersey, year: 1855)
CensusReport.create(state: new_jersey, year: 1865)
CensusReport.create(state: new_jersey, year: 1875)
CensusReport.create(state: new_jersey, year: 1885)
CensusReport.create(state: new_jersey, year: 1895)
CensusReport.create(state: new_jersey, year: 1905)
CensusReport.create(state: new_jersey, year: 1915)

CensusReport.create(state: new_mexico, year: 1790)
CensusReport.create(state: new_mexico, year: 1823)
CensusReport.create(state: new_mexico, year: 1845)
CensusReport.create(state: new_mexico, year: 1885)

CensusReport.create(state: new_york, year: 1790)
CensusReport.create(state: new_york, year: 1825)
CensusReport.create(state: new_york, year: 1835)
CensusReport.create(state: new_york, year: 1845)
CensusReport.create(state: new_york, year: 1855)
CensusReport.create(state: new_york, year: 1865)
CensusReport.create(state: new_york, year: 1875)
CensusReport.create(state: new_york, year: 1892)
CensusReport.create(state: new_york, year: 1905)
CensusReport.create(state: new_york, year: 1915)
CensusReport.create(state: new_york, year: 1925)

CensusReport.create(state: north_carolina, year: 1786)

CensusReport.create(state: north_dakota, year: 1885)
CensusReport.create(state: north_dakota, year: 1915)
CensusReport.create(state: north_dakota, year: 1925)

CensusReport.create(state: oklahoma, year: 1890)
CensusReport.create(state: oklahoma, year: 1907)

CensusReport.create(state: oregon, year: 1842)
CensusReport.create(state: oregon, year: 1843)
CensusReport.create(state: oregon, year: 1845)
CensusReport.create(state: oregon, year: 1849)
CensusReport.create(state: oregon, year: 1850)
CensusReport.create(state: oregon, year: 1853)
CensusReport.create(state: oregon, year: 1854)
CensusReport.create(state: oregon, year: 1855)
CensusReport.create(state: oregon, year: 1856)
CensusReport.create(state: oregon, year: 1857)
CensusReport.create(state: oregon, year: 1858)
CensusReport.create(state: oregon, year: 1859)
CensusReport.create(state: oregon, year: 1865)
CensusReport.create(state: oregon, year: 1870)
CensusReport.create(state: oregon, year: 1875)
CensusReport.create(state: oregon, year: 1885)
CensusReport.create(state: oregon, year: 1895)
CensusReport.create(state: oregon, year: 1905)

CensusReport.create(state: rhode_island, year: 1774)
CensusReport.create(state: rhode_island, year: 1777)
CensusReport.create(state: rhode_island, year: 1782)
CensusReport.create(state: rhode_island, year: 1865)
CensusReport.create(state: rhode_island, year: 1875)
CensusReport.create(state: rhode_island, year: 1885)
CensusReport.create(state: rhode_island, year: 1905)
CensusReport.create(state: rhode_island, year: 1915)
CensusReport.create(state: rhode_island, year: 1925)
CensusReport.create(state: rhode_island, year: 1935)

CensusReport.create(state: south_carolina, year: 1825)
CensusReport.create(state: south_carolina, year: 1839)
CensusReport.create(state: south_carolina, year: 1869)
CensusReport.create(state: south_carolina, year: 1875)

CensusReport.create(state: south_dakota, year: 1885)
CensusReport.create(state: south_dakota, year: 1895)
CensusReport.create(state: south_dakota, year: 1905)
CensusReport.create(state: south_dakota, year: 1915)
CensusReport.create(state: south_dakota, year: 1925)
CensusReport.create(state: south_dakota, year: 1935)
CensusReport.create(state: south_dakota, year: 1945)

CensusReport.create(state: tennessee, year: 1891)

CensusReport.create(state: texas, year: 1829)
CensusReport.create(state: texas, year: 1830)
CensusReport.create(state: texas, year: 1831)
CensusReport.create(state: texas, year: 1832)
CensusReport.create(state: texas, year: 1833)
CensusReport.create(state: texas, year: 1834)
CensusReport.create(state: texas, year: 1835)
CensusReport.create(state: texas, year: 1836)

CensusReport.create(state: utah, year: 1891)

CensusReport.create(state: texas, year: 1782)
CensusReport.create(state: texas, year: 1783)
CensusReport.create(state: texas, year: 1784)
CensusReport.create(state: texas, year: 1785)
CensusReport.create(state: texas, year: 1786)

CensusReport.create(state: washington, year: 1856)
CensusReport.create(state: washington, year: 1857)
CensusReport.create(state: washington, year: 1858)
CensusReport.create(state: washington, year: 1860)
CensusReport.create(state: washington, year: 1871)
CensusReport.create(state: washington, year: 1874)
CensusReport.create(state: washington, year: 1877)
CensusReport.create(state: washington, year: 1878)
CensusReport.create(state: washington, year: 1879)
CensusReport.create(state: washington, year: 1880)
CensusReport.create(state: washington, year: 1881)
CensusReport.create(state: washington, year: 1883)
CensusReport.create(state: washington, year: 1885)
CensusReport.create(state: washington, year: 1887)
CensusReport.create(state: washington, year: 1889)
CensusReport.create(state: washington, year: 1891)
CensusReport.create(state: washington, year: 1892)
CensusReport.create(state: washington, year: 1898)

CensusReport.create(state: wisconsin, year: 1836)
CensusReport.create(state: wisconsin, year: 1838)
CensusReport.create(state: wisconsin, year: 1842)
CensusReport.create(state: wisconsin, year: 1846)
CensusReport.create(state: wisconsin, year: 1847)
CensusReport.create(state: wisconsin, year: 1855)
CensusReport.create(state: wisconsin, year: 1865)
CensusReport.create(state: wisconsin, year: 1875)
CensusReport.create(state: wisconsin, year: 1885)
CensusReport.create(state: wisconsin, year: 1895)
CensusReport.create(state: wisconsin, year: 1905)

CensusReport.create(state: wyoming, year: 1875)
CensusReport.create(state: wyoming, year: 1878)